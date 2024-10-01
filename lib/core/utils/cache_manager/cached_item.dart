import 'package:freezed_annotation/freezed_annotation.dart';

part 'cached_item.freezed.dart';

@freezed
class CachedItem<V> with _$CachedItem<V> {
  const factory CachedItem({
    required DateTime timestamp,
    required V value,
  }) = _CachedItem<V>;

  factory CachedItem.withCurrentTimestamp({required V value}) {
    return CachedItem(
      timestamp: DateTime.now(),
      value: value,
    );
  }
}
