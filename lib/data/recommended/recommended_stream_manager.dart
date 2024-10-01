import 'package:injectable/injectable.dart';
import 'package:nuntium/core/stream/stream_manager.dart';
import 'package:nuntium/core/stream/stream_manager_impl.dart';
import 'package:nuntium/data/models/article/fetch_recommended_result.dart';

@LazySingleton(as: StreamManager<FetchRecommendedResult>)
class ArticlesStreamManager extends StreamManagerImpl<FetchRecommendedResult> {}
