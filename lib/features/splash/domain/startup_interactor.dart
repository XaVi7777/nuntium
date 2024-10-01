import 'package:dartz/dartz.dart';

import 'package:nuntium/core/models/failure/failure.dart';

abstract class StartupInteractor {
  Future<Either<Failure, Unit>> init();

  bool get isAuthorized;

  Future<Either<Failure, Unit>> loadData();
}
