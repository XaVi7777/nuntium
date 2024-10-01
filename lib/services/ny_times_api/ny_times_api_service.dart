import 'package:nuntium/services/ny_times_api/export.dart';

abstract class NyTimesApiService {
  Future<Map<String, dynamic>> getNews(GetNewsRequest request);

  Future<Map<String, dynamic>> getRecomendedNews(
      GetRecommendedNewsRequest request);
}
