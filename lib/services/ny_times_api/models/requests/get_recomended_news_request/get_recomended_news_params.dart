import 'package:nuntium/services/ny_times_api/models/requests/get_recomended_news_request/get_recomended_news_period.dart';
import 'package:nuntium/services/ny_times_api/models/requests/get_recomended_news_request/get_recomended_news_type.dart';

class GetRecomendedNewsParams {
  final GetRecomendedNewsPeriod period;
  final GetRecomendedNewsType type;

  const GetRecomendedNewsParams({
    this.period = GetRecomendedNewsPeriod.day,
    this.type = GetRecomendedNewsType.viewed,
  });
}
