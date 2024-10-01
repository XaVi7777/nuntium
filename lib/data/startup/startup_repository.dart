import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';

abstract class StartupRepository {
  Future<Either<Failure, Unit>> init();
  bool isInited();
}
