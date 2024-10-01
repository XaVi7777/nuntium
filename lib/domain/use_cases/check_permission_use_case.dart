import 'package:injectable/injectable.dart';
import 'package:nuntium/data/permissions/permissions_repository.dart';
import 'package:nuntium/data/remote_notifications/remote_notifications_repository.dart';
import 'package:nuntium/domain/dto/permission_request.dart';

@injectable
class CheckPermissionUseCase {
  final PermissionsRepository _permissionsRepository;
  final RemoteNotificationsRepository _remoteNotificationsRepository;

  CheckPermissionUseCase(
    this._permissionsRepository,
    this._remoteNotificationsRepository,
  );

  Future<bool> call(PermissionRequest request) => request.when(
        general: (permission) =>
            Future.value(_permissionsRepository.hasPermission(permission)),
        notifications: (_) =>
            _remoteNotificationsRepository.hasNotificationPermission,
      );
}
