import 'package:injectable/injectable.dart';
import 'package:nuntium/core/utils/cache_manager/cache_manager.dart';
import 'package:nuntium/data/models/article/article_model.dart';

@LazySingleton(as: CacheManager<String, List<ArticleModel>>)
class ArticlesCache extends CacheManager<String, List<ArticleModel>> {
  ArticlesCache(super.config);
}
