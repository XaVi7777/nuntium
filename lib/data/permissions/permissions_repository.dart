import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class PermissionsRepository {
  bool hasPermission(Permission permission);
  Future<Either<Failure, Unit>> requestPermission(Permission permission);
  Future<Either<Failure, Unit>> init();
}
