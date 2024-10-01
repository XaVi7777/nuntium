import 'package:injectable/injectable.dart';
import 'package:nuntium/core/utils/cache_manager/cache_manager.dart';
import 'package:nuntium/data/models/article/article_model.dart';

@singleton
class RecommendedCache
    extends CacheManager<int, List<ArticleModel>> {
  RecommendedCache(super.config);
}
