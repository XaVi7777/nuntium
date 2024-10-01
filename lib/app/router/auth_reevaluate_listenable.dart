import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/data/user/user_repository.dart';

class AppReevaluateListenable with ChangeNotifier {
  final StackRouter _router;
  final UserRepository _userRepository;

  AppReevaluateListenable(
    this._router,
    this._userRepository,
  ) {
    _userRepository.authStream.listen((isAuthorized) {
      if (!isAuthorized) {
        _router.replaceAll([const OnboardingRoute()]);
      }
      if (_router.current.name == SignInRoute.name ||
          _router.current.name == SignUpRoute.name) {
        _router.replaceAll([SplashRoute()]);
      }
      notifyListeners();
    });
  }
}
