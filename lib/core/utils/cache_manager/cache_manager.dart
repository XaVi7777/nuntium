

import 'package:nuntium/app/config/config.dart';
import 'package:nuntium/core/utils/cache_manager/cached_item.dart';

abstract class CacheManager<K, V> {
  final Map<K, CachedItem<V>> _cache = {};
  final Config config;

  CacheManager(this.config);

  V? get(K key) {
    final cachedItem = _cache[key];

    if (cachedItem != null) {
      final currentTime = DateTime.now();
      final itemTime = cachedItem.timestamp;
      final ttl = Duration(seconds: config.cacheTTL);
      if (currentTime.difference(itemTime) <= ttl) {
        return cachedItem.value;
      } else {
        _cache.remove(key);
      }
    }
    return null;
  }

  void update(K key, V item) {
    final cachedItem = CachedItem(
      timestamp: DateTime.now(),
      value: item,
    );
    _cache[key] = cachedItem;
  }

  void remove(K key) {
    _cache.remove(key);
  }

  void clear() {
    _cache.clear();
  }
}
