import 'package:injectable/injectable.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/article/article_model.dart';

@LazySingleton(as: StreamManager<List<ArticleModel>>)
class HomeArticlesStreamManager extends StreamManagerImpl<List<ArticleModel>> {}
