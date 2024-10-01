import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:nuntium/data/models/user/user_model.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton()
class AuthStateManager {
  final StreamController<bool> _authController = StreamController<bool>();
  final BehaviorSubject<UserModel> _userController =
      BehaviorSubject<UserModel>();

  Stream<bool> get authStream => _authController.stream;
  Stream<UserModel> get userStream => _userController.stream;

  void updateUser(UserModel? user) {
    if (user != null) {
      _userController.add(user);
      _authController.add(true);
    } else {
      _authController.add(false);
    }
  }
}
