import 'package:injectable/injectable.dart';
import 'package:nuntium/data/data_sources/remote_datasource/base_remote_datasource.dart';
import 'package:nuntium/data/data_sources/remote_datasource/remote_datasource.dart';
import 'package:nuntium/services/ny_times_api/export.dart';

@Singleton(as: RemoteDataSource)
class RecommendedRemoteDataSource extends BaseRemoteDataSource
    implements
        RemoteDataSource<GetRecommendedNewsRequest,
            GetRecommendedNewsResponse> {
  final NyTimesApiService nyTimesApiService;

  RecommendedRemoteDataSource({required this.nyTimesApiService});

  @override
  Future<GetRecommendedNewsResponse> get(
      GetRecommendedNewsRequest request) async {
    final json = await nyTimesApiService.getRecomendedNews(request);
    return GetRecommendedNewsResponse.fromJson(json);
  }
}
