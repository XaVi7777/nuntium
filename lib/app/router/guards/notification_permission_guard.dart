import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/data/remote_notifications/remote_notifications_repository.dart';

class NotificationPermissionGuard extends AutoRouteGuard {
  final RemoteNotificationsRepository _remoteNotificationsRepository;

  NotificationPermissionGuard(this._remoteNotificationsRepository);

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (await _remoteNotificationsRepository.permissionHasBeenRequested ||
        await _remoteNotificationsRepository.hasNotificationPermission) {
      resolver.next();
    } else {
      unawaited(resolver.redirect(const PermissionsRoute()));
    }
  }
}
