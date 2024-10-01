import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/arch/dio_error_handler/dio_error_handler.dart';
import 'package:nuntium/arch/dio_error_handler/dio_error_handler_impl.dart';
import 'package:nuntium/arch/dio_error_handler/models/default_api_error.dart';
import 'package:nuntium/arch/dio_request_wrapper/dio_request_wrapper.dart';
import 'package:nuntium/arch/dio_request_wrapper/dio_request_wrapper_impl.dart';
import 'package:nuntium/core/http/dio_client_creator.dart';

@module
abstract class DioClientModule {
  @Named(InjectableNames.nyTimesHttpClient)
  @preResolve
  @singleton
  Future<Dio> makeDioClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeNyTimesDioClient();

  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioErrorHandler(Logger logger) =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        logger: logger,
        parseJsonApiError: (json) async {
          return (json != null) ? DefaultApiError.fromJson(json) : null;
        },
      );

  @lazySingleton
  DioRequestWrapper makeDioRequestWrapper(Logger logger) =>
      DioRequestWrapperImpl(
        connectivity: Connectivity(),
        logger: logger,
      );
}
