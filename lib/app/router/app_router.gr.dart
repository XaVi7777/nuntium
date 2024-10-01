// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [BookmarksPage]
class BookmarksRoute extends PageRouteInfo<void> {
  const BookmarksRoute({List<PageRouteInfo>? children})
      : super(
          BookmarksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarksRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BookmarksPage();
    },
  );
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForgotPasswordPage();
    },
  );
}

/// generated route for
/// [GetStartedPage]
class GetStartedRoute extends PageRouteInfo<void> {
  const GetStartedRoute({List<PageRouteInfo>? children})
      : super(
          GetStartedRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GetStartedPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingPage();
    },
  );
}

/// generated route for
/// [PermissionsPage]
class PermissionsRoute extends PageRouteInfo<void> {
  const PermissionsRoute({List<PageRouteInfo>? children})
      : super(
          PermissionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PermissionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PermissionsPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [RecommendedPage]
class RecommendedRoute extends PageRouteInfo<void> {
  const RecommendedRoute({List<PageRouteInfo>? children})
      : super(
          RecommendedRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecommendedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RecommendedPage();
    },
  );
}

/// generated route for
/// [SectionsPage]
class SectionsRoute extends PageRouteInfo<void> {
  const SectionsRoute({List<PageRouteInfo>? children})
      : super(
          SectionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SectionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SectionsPage();
    },
  );
}

/// generated route for
/// [SelectLanguagePage]
class SelectLanguageRoute extends PageRouteInfo<void> {
  const SelectLanguageRoute({List<PageRouteInfo>? children})
      : super(
          SelectLanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectLanguageRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SelectLanguagePage();
    },
  );
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignInPage();
    },
  );
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignUpPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    VoidCallback? onLoad,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SplashRoute.name,
          args: SplashRouteArgs(
            onLoad: onLoad,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SplashRouteArgs>(orElse: () => const SplashRouteArgs());
      return SplashPage(
        onLoad: args.onLoad,
        key: args.key,
      );
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({
    this.onLoad,
    this.key,
  });

  final VoidCallback? onLoad;

  final Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{onLoad: $onLoad, key: $key}';
  }
}

/// generated route for
/// [WebViewPage]
class WebViewRoute extends PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    required String url,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            url: url,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WebViewRouteArgs>();
      return WebViewPage(
        url: args.url,
        key: args.key,
      );
    },
  );
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    required this.url,
    this.key,
  });

  final String url;

  final Key? key;

  @override
  String toString() {
    return 'WebViewRouteArgs{url: $url, key: $key}';
  }
}
