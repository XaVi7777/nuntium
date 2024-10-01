import 'package:auto_route/auto_route.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/data/user/user_repository.dart';

class AuthGuard extends AutoRouteGuard {
  final UserRepository _userRepository;

  AuthGuard(this._userRepository);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_userRepository.isAuthorized()) {
      resolver.next();
    } else {
      router.replaceAll([const OnboardingRoute()]);
    }
  }
}
