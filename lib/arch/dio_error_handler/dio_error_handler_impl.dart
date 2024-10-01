import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:nuntium/arch/dio_error_handler/dio_error_handler.dart';
import 'package:nuntium/arch/dio_error_handler/models/common_response_error.dart';
import 'package:retry/retry.dart';

typedef ParseJsonApiError<DE> = Future<DE?> Function(Map<String, dynamic>?);
typedef MakeRequest<T> = Future<T> Function();

class DioErrorHandlerImpl<DE> implements DioErrorHandler<DE> {
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
  @protected
  final ParseJsonApiError<DE> parseJsonApiError;

  DioErrorHandlerImpl({
    required this.connectivity,
    required this.logger,
    required this.parseJsonApiError,
    this.maxAttemptsCount = defaultMaxAttemptsCount,
    this.retryStatusCodes = defaultRetryStatusCodes,
    this.undefinedErrorCodes = defaultUndefinedErrorCodes,
  });

  @override
  Future<Either<CommonResponseError<DE>, T>> processRequest<T>(
    MakeRequest<T> makeRequest,
  ) async {
    try {
      final response = await retry(
        makeRequest,
        maxAttempts: maxAttemptsCount,
        retryIf: (exception) => _retryPolicy(
          exception: exception,
          retryStatusCodes: retryStatusCodes,
        ),
      );

      return right(response);
    } on DioException catch (e) {
      return left(await _processDioError(e));
    } on Exception catch (e) {
      logger.e('При обработке запроса была выброшена ошибка $e');
      return left(CommonResponseError.undefinedError(e));
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
      logger
          .w('Ошибка обработки ответа сетевого запроса: ${exception.message}');
      return true;
    }

    return retryStatusCodes.contains(response.statusCode);
  }

  Future<CommonResponseError<DE>> _processDioError(DioException e) async {
    final responseData = e.response?.data;
    final statusCode = e.response?.statusCode;

    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        statusCode == HttpStatus.networkConnectTimeoutError) {
      return const CommonResponseError.noNetwork();
    }

    if (statusCode == HttpStatus.unauthorized) {
      return const CommonResponseError.unAuthorized();
    }

    if (statusCode == HttpStatus.tooManyRequests) {
      return const CommonResponseError.tooManyRequests();
    }

    if (undefinedErrorCodes.contains(statusCode)) {
      return CommonResponseError.undefinedError(e);
    }

    Object? errorJson;
    if (responseData is String) {
      try {
        errorJson = jsonDecode(responseData);
      } on FormatException {
        logger.w('Получили ответ: \n "$responseData" \n что не является JSON');
      }
    } else if (responseData is Map<String, dynamic>) {
      errorJson = responseData;
    }

    if (errorJson is Map<String, dynamic>) {
      try {
        final apiError = await parseJsonApiError(errorJson);
        if (apiError != null) {
          return CommonResponseError.customError(apiError);
        }
      } on Exception catch (e) {
        logger.w(
            'Ответ c ошибкой от сервера \n $responseData \n не соответствует контракту ApiError $e');
      }
    }

    return CommonResponseError.undefinedError(e);
  }
}
