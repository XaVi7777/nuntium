import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/dio_request_wrapper/dio_request_wrapper.dart';
import 'package:nuntium/data/data_sources/remote_datasource/remote_datasource.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/services/ny_times_api/export.dart';

@Singleton(as: RemoteDataSource)
class ArticlesRemoteDataSource
    implements RemoteDataSource<GetNewsRequest, GetNewsResponse> {
  @protected
  final NyTimesApiService nyTimesApiService;
  @protected
  final DioRequestWrapper dioRequestWrapper;

  ArticlesRemoteDataSource({
    required this.nyTimesApiService,
    required this.dioRequestWrapper,
  });

  @override
  Future<GetNewsResponse> get(GetNewsRequest request) =>
      dioRequestWrapper.processRequest(() => _getNews(request));

  Future<GetNewsResponse> _getNews(GetNewsRequest request) async {
    final json = await nyTimesApiService.getNews(request);
    return GetNewsResponse.fromJson(json);
  }
}
