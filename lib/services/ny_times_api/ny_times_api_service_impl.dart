import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/config/ny_times_api_service_config.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/services/ny_times_api/export.dart';
import 'package:nuntium/services/ny_times_api/models/requests/get_recomended_news_request/get_recomended_news_period.dart';
import 'package:nuntium/services/ny_times_api/models/requests/get_recomended_news_request/get_recomended_news_type.dart';

@Singleton(as: NyTimesApiService)
class NyTimesApiServiceImpl implements NyTimesApiService {
  final Dio _client;
  final NyTimesApiServiceConfig _config;

  NyTimesApiServiceImpl(
    @Named(InjectableNames.nyTimesHttpClient) this._client,
    this._config,
  );

  String get _baseEndpoint => _config.baseEndpoint;
  String get _apiVersion => _config.apiVersion;

  @override
  Future<Map<String, dynamic>> getNews(GetNewsRequest request) async {
    final response = await _client.get<Map<String, dynamic>>(
      '$_baseEndpoint/${request.endpoint}/$_apiVersion/${request.params.section}.json',
    );
    return response.data ?? {};
  }

  @override
  Future<Map<String, dynamic>> getRecomendedNews(
    GetRecommendedNewsRequest request,
  ) async {
    final response = await _client.get<Map<String, dynamic>>(
      '$_baseEndpoint/${request.endpoint}/$_apiVersion/${request.params.type.asString}/${request.params.period.periodInDays}.json',
    );
    return response.data ?? {};
  }
}
