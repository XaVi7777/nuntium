import 'package:dartz/dartz.dart';
import 'package:nuntium/arch/dio_error_handler/models/common_response_error.dart';

typedef ParseJsonApiError<DE> = Future<DE?> Function(Map<String, dynamic>?);
typedef MakeRequest<T> = Future<T> Function();

abstract class DioErrorHandler<DE> {
  Future<Either<CommonResponseError<DE>, T>> processRequest<T>(
      MakeRequest<T> makeRequest);
}
