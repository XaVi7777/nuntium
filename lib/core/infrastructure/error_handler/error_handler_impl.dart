import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:drift/remote.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler.dart';
import 'package:nuntium/core/models/failure/failure.dart';

class ErrorHandlerImpl implements ErrorHandler {
  final Logger _logger;

  ErrorHandlerImpl(this._logger);

  @override
  Future<Either<Failure, T>> execute<T>(Future<T> Function() action) async {
    try {
      final result = await action();
      return right(result);
    } on DriftRemoteException catch (e) {
      _logger.e(e);
      return left(Failure.databaseFailure(e.toString()));
    } on DriftWrappedException catch (e) {
      _logger.e(e);
      return left(Failure.databaseFailure(e.toString()));
    } on DioException catch (e) {
      _logger.e(e);
      if (e.type == DioExceptionType.cancel) {
        return left(const Failure.requestCancelled('Request was cancelled'));
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return left(const Failure.connectionFailure('Connection timed out'));
      } else if (e.type == DioExceptionType.badResponse) {
        return left(Failure.serverFailure('Server error: ${e.message}'));
      } else {
        return left(Failure.connectionFailure('Network error: ${e.message}'));
      }
    } on FirebaseAuthException catch (e) {
      _logger.e(e);
      return left(Failure.firebaAuthFailure(e.code));
    } on Exception catch (e) {
      _logger.e(e);
      return left(Failure.unknownFailure('Unknown error: $e'));
    }
  }
}
