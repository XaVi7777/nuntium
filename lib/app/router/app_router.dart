import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/app/router/guards/auth_guard.dart';
import 'package:nuntium/app/router/guards/init_guard.dart';
import 'package:nuntium/app/router/guards/notification_permission_guard.dart';
import 'package:nuntium/features/features.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final AuthGuard authGuard;
  final InitGuard initGuard;
  final NotificationPermissionGuard notificationPermissionGuard;

  AppRouter({
    required this.authGuard,
    required this.initGuard,
    required this.notificationPermissionGuard,
  });

  static const int _durationInMilliseconds = 500;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/onboarding',
          page: OnboardingRoute.page,
        ),
        CustomRoute(
          path: '/permissions',
          page: PermissionsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: _durationInMilliseconds,
        ),
        CustomRoute(
          path: '/get-started',
          page: GetStartedRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: _durationInMilliseconds,
          guards: [
            notificationPermissionGuard,
          ],
        ),
        CustomRoute(
          path: '/sign-in',
          page: SignInRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: _durationInMilliseconds,
        ),
        CustomRoute(
          path: '/forgot-password',
          page: ForgotPasswordRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: _durationInMilliseconds,
        ),
        CustomRoute(
          path: '/sign-up',
          page: SignUpRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: _durationInMilliseconds,
        ),
        AutoRoute(
          path: '/main',
          page: MainRoute.page,
          guards: [authGuard],
          children: [
            AutoRoute(
              path: 'home',
              page: HomeRoute.page,
              maintainState: false,
              guards: [authGuard],
            ),
            AutoRoute(
              path: 'sections',
              page: SectionsRoute.page,
              maintainState: false,
              guards: [authGuard],
            ),
            AutoRoute(
              path: 'bookmarks',
              page: BookmarksRoute.page,
              maintainState: false,
              guards: [authGuard],
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileRoute.page,
              maintainState: false,
              guards: [authGuard],
            ),
          ],
        ),
        AutoRoute(
          path: '/web-view',
          page: WebViewRoute.page,
          guards: [authGuard],
        ),
        CustomRoute(
          path: '/recommended',
          page: RecommendedRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          durationInMilliseconds: _durationInMilliseconds,
          guards: [authGuard],
        ),
        CustomRoute(
          path: '/select-language',
          page: SelectLanguageRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: _durationInMilliseconds,
          guards: [authGuard],
        ),
      ];
}
