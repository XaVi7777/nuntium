import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/data/notifications/notifications_repository.dart';
import 'package:nuntium/data/permissions/permissions_repository.dart';
import 'package:nuntium/data/remote_notifications/remote_notifications_repository.dart';
import 'package:nuntium/domain/dto/notifications_permission_request.dart';
import 'package:nuntium/domain/dto/permission_request.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@injectable
class RequestPermissionUseCase {
  final PermissionsRepository _permissionsRepository;
  final RemoteNotificationsRepository _remoteNotificationsRepository;
  final NotificationRepository _notificationRepository;

  RequestPermissionUseCase(
    this._permissionsRepository,
    this._remoteNotificationsRepository,
    this._notificationRepository,
  );

  Future<Either<Failure, Unit>> call(PermissionRequest request) => request.when(
        general: (permission) => _handlePermissionRequest(
          () => _permissionsRepository.requestPermission(permission),
        ),
        notifications: (notificationRequest) => _handlePermissionRequest(
          () => _remoteNotificationsRepository.requestNotificationPermission(
            notificationRequest ?? const NotificationsPermissionRequest(),
          ),
        ),
      );

  Future<Either<Failure, Unit>> _handlePermissionRequest(
    Future<Either<Failure, Unit>> Function() requestFunction,
  ) async {
    final result = await requestFunction();
    if (result.isLeft()) {
      _notificationRepository.sendNotification(const SnackbarMessage(
        message: LocaleKeys.something_went_wrong,
        type: SnackbarMessageType.error,
      ));
    }
    return result;
  }
}
