import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/domain/dto/notifications_permission_request.dart';

abstract class RemoteNotificationsRepository {
  Future<bool> get hasNotificationPermission;

  Future<bool> get permissionHasBeenRequested;
  Future<void> setPermissionHasBeenRequested(bool value);
  Future<bool> isDenied();
  Future<Either<Failure, Unit>> requestNotificationPermission(
    NotificationsPermissionRequest options,
  );
}
