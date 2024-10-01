import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/app/router/app_router.dart';

typedef IsInited = bool Function();

class InitGuard extends AutoRouteGuard {
  @protected
  final IsInited isInited;

  InitGuard({
    required this.isInited,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isInited()) {
      resolver.next();
    } else {
      resolver.redirect(const SignInRoute());
    }
  }
}
