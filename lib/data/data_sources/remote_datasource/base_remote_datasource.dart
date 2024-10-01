import 'package:dartz/dartz.dart';
import 'package:nuntium/arch/dio_error_handler/models/common_response_error.dart';
import 'package:nuntium/arch/dio_error_handler/models/default_api_error.dart';
import 'package:nuntium/core/models/failure/failure.dart';

abstract class BaseRemoteDataSource {
  Future<Either<Failure, V>> handleApiResponse<V>(
    Future<Either<CommonResponseError<DefaultApiError>, V>> Function() apiCall,
  ) async {
    final response = await apiCall();
    return response.fold(
      (error) => left(
        error.isNoNetwork
            ? Failure.connectionFailure(error.message)
            : Failure.serverFailure(error.message),
      ),
      right,
    );
  }
}
