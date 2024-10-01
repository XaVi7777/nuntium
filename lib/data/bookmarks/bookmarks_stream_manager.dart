import 'package:injectable/injectable.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/core/stream/stream_manager.dart';
import 'package:nuntium/core/stream/stream_manager_impl.dart';
import 'package:nuntium/data/models/article/article_model.dart';

@LazySingleton(as: StreamManager<List<ArticleModel>>)
@Named(InjectableNames.bookmarksRepositoryStreamManager)
class BookmarksStreamManager extends StreamManagerImpl<List<ArticleModel>> {}
