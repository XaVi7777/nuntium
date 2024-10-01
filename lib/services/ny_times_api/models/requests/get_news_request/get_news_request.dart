import 'package:nuntium/core/http/server_request.dart';
import 'package:nuntium/services/ny_times_api/models/requests/get_news_request/get_news_params.dart';

class GetNewsRequest extends ServerRequest<GetNewsParams, void, void> {
  GetNewsRequest({
    required super.params,
  }) : super(headers: null, body: null);

  @override
  String get endpoint => 'topstories';
}
