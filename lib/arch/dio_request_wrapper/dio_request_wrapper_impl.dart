import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:nuntium/arch/dio_error_handler/models/http_status.dart';
import 'package:nuntium/arch/dio_request_wrapper/dio_request_wrapper.dart';
import 'package:retry/retry.dart';

class DioRequestWrapperImpl implements DioRequestWrapper {
  static const defaultMaxAttemptsCount = 3;

  static const retryStatusCodesWithoutBadReq = [
    HttpStatus.notFound,
    HttpStatus.forbidden,
    HttpStatus.unauthorized,
    HttpStatus.unsupportedMediaType,
  ];

  static const defaultRetryStatusCodes = [
    ...retryStatusCodesWithoutBadReq,
    HttpStatus.badRequest,
  ];

  static const defaultUndefinedErrorCodes = [
    HttpStatus.internalServerError,
    HttpStatus.notImplemented,
    HttpStatus.badGateway,
    HttpStatus.serviceUnavailable,
  ];

  @protected
  final Connectivity connectivity;
  @protected
  final Logger logger;
  @protected
  final List<int> retryStatusCodes;
  @protected
  final List<int> undefinedErrorCodes;
  final int maxAttemptsCount;

  DioRequestWrapperImpl({
    required this.connectivity,
    required this.logger,
    this.maxAttemptsCount = defaultMaxAttemptsCount,
    this.retryStatusCodes = defaultRetryStatusCodes,
    this.undefinedErrorCodes = defaultUndefinedErrorCodes,
  });

  @override
  Future<T> processRequest<T>(MakeRequest<T> makeRequest) async {
    try {
      return await retry(
        makeRequest,
        maxAttempts: maxAttemptsCount,
        retryIf: (exception) => _retryPolicy(
          exception: exception,
          retryStatusCodes: retryStatusCodes,
        ),
      );
    } on DioException catch (e) {
      logger.e('DioException при выполнении запроса: ${e.message}');
      rethrow;
    } on Exception catch (e) {
      logger.e('Ошибка при выполнении запроса: $e');
      rethrow;
    }
  }

  FutureOr<bool> _retryPolicy({
    required Exception exception,
    required List<int> retryStatusCodes,
  }) {
    if (exception is! DioException) return false;
    if (exception.type == DioExceptionType.cancel) return false;
    final response = exception.response;
    if (response == null) {
      logger.w('Ошибка при выполнении сетевого запроса: ${exception.message}');
      return true;
    }

    return retryStatusCodes.contains(response.statusCode);
  }
}
