import 'package:nuntium/core/http/server_request.dart';
import 'package:nuntium/services/ny_times_api/models/requests/get_recomended_news_request/get_recomended_news_params.dart';

class GetRecommendedNewsRequest
    extends ServerRequest<GetRecomendedNewsParams, void, void> {
  const GetRecommendedNewsRequest({
    required super.params,
  }) : super(headers: null, body: null);

  @override
  String get endpoint => 'mostpopular';
}
