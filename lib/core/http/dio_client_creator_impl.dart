import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/app_environment.dart';
import 'package:nuntium/app/config/ny_times_api_service_config.dart';
import 'package:nuntium/core/http/dio_client_creator.dart';
import 'package:nuntium/core/http/interceptors/api_key_interceptor.dart';
import 'package:nuntium/core/http/link_provider.dart';
import 'package:nuntium/core/infrastructure/dio_logger_wrapper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@Singleton(as: DioClientCreator)
class DioClientCreatorImpl implements DioClientCreator {
  static const defaultConnectTimeout = Duration(milliseconds: 5000);
  static const defaultReceiveTimeout = Duration(milliseconds: 25000);

  @protected
  final LinkProvider linkProvider;
  @protected
  final AppEnvironment appEnvironment;
  @protected
  final DioLoggerWrapper logger;
  @protected
  final NyTimesApiServiceConfig nyTimesApiServiceConfig;

  DioClientCreatorImpl({
    required this.linkProvider,
    required this.logger,
    required this.appEnvironment,
    required this.nyTimesApiServiceConfig,
  });

  @override
  Future<Dio> makeNyTimesDioClient() => _baseDio(linkProvider.timeHost);

  Future<Dio> _baseDio(String url) async {
    final startDio = Dio();

    startDio.options.baseUrl = url;
    startDio.options.connectTimeout = defaultConnectTimeout;
    startDio.options.receiveTimeout = defaultReceiveTimeout;
    startDio.interceptors
        .add(ApiKeyInterceptor(nyTimesApiServiceConfig.apiKey));
    if (appEnvironment.enableDioLogs) {
      startDio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          logPrint: logger.logPrint,
        ),
      );
    }

    startDio.transformer = BackgroundTransformer();
    return startDio;
  }
}
