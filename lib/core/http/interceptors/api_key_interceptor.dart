import 'package:dio/dio.dart';

class ApiKeyInterceptor extends Interceptor {
  final String apiKey;

  ApiKeyInterceptor(this.apiKey);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    final queryParameters = Map<String, dynamic>.from(options.queryParameters);

    if (!queryParameters.containsKey('api-key')) {
      queryParameters['api-key'] = apiKey;
    }

    options.queryParameters = queryParameters;

    handler.next(options);
  }
}
