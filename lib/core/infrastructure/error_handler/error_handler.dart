import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';

abstract class ErrorHandler {
  Future<Either<Failure, T>> execute<T>(Future<T> Function() action);
}
