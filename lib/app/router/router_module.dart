import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/router/auth_reevaluate_listenable.dart';
import 'package:nuntium/app/router/guards/auth_guard.dart';
import 'package:nuntium/app/router/guards/init_guard.dart';
import 'package:nuntium/app/router/guards/notification_permission_guard.dart';
import 'package:nuntium/app/router/router_logging_observer.dart';
import 'package:nuntium/app/router/services/navigation_service.dart';
import 'package:nuntium/app/router/services/navigation_service_impl.dart';
import 'package:nuntium/data/remote_notifications/remote_notifications_repository.dart';
import 'package:nuntium/data/startup/startup_repository.dart';
import 'package:nuntium/data/user/user_repository.dart';

@module
abstract class RouterModule {
  @singleton
  AppRouter appRouter(
    AuthGuard authGuard,
    InitGuard initGuard,
    NotificationPermissionGuard notificationPermissionGuard,
  ) {
    return AppRouter(
      authGuard: authGuard,
      initGuard: initGuard,
      notificationPermissionGuard: notificationPermissionGuard,
    );
  }

  @singleton
  AuthGuard authGuard(UserRepository userRepository) =>
      AuthGuard(userRepository);

  @singleton
  InitGuard initGuard(StartupRepository startupRepository) =>
      InitGuard(isInited: startupRepository.isInited);

  @singleton
  NotificationPermissionGuard notificationPermissionGuard(
          RemoteNotificationsRepository remoteNotificationsRepository) =>
      NotificationPermissionGuard(remoteNotificationsRepository);

  @singleton
  NavigationService navigationService(AppRouter appRouter) =>
      NavigationServiceImpl(appRouter);

  @injectable
  RouterLoggingObserver routerLoggingObserver(
    Logger logger,
    AppRouter appRouter,
  ) {
    return RouterLoggingObserver(
      logger: logger,
      appRouter: appRouter,
    );
  }

  @singleton
  AppReevaluateListenable appReevaluateListenable(
    AppRouter appRouter,
    UserRepository userRepository,
  ) =>
      AppReevaluateListenable(
        appRouter,
        userRepository,
      );
}
