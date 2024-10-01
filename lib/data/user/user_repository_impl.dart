import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/data_sources/local_datasource/shared_prefs_data_sources/user_local_data_source/user_local_data_source.dart';
import 'package:nuntium/data/models/user/user_model.dart';
import 'package:nuntium/data/user/auth_state_manager.dart';
import 'package:nuntium/data/user/user_repository.dart';
import 'package:nuntium/domain/dto/sign_in_request.dart';
import 'package:nuntium/domain/dto/sign_up_request.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';
import 'package:nuntium/services/auth/auth_service.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final AuthService _authService;
  final UserLocalDataSource _userLocalDataSource;
  final AuthStateManager _authStateManager;
  final ErrorHandler _errorHandler;

  UserRepositoryImpl(
    this._authService,
    this._userLocalDataSource,
    this._authStateManager,
    this._errorHandler,
  );

  bool _isInited = false;
  UserModel? _currentUser;

  @override
  Stream<bool> get authStream => _authStateManager.authStream;

  @override
  Stream<UserModel> get userStream => _authStateManager.userStream;

  @override
  bool isAuthorized() {
    return _currentUser != null;
  }

  @override
  Future<Either<Failure, Unit>> init() => _errorHandler.execute(_onInit);

  @override
  Future<Either<Failure, Unit>> signUp(SignUpRequest request) =>
      _errorHandler.execute(() => _onSignUp(request));

  @override
  Future<Either<Failure, Unit>> signIn(SignInRequest request) =>
      _errorHandler.execute(() => _onSignIn(request));

  @override
  Future<Either<Failure, Unit>> signOut() => _errorHandler.execute(_onSignOut);

  Future<Unit> _onInit() async {
    if (_isInited) {
      return unit;
    }

    final userData = await _userLocalDataSource.getUser();
    if (userData != null) {
      _currentUser = UserModel.fromJson(userData);
      _authStateManager.updateUser(_currentUser);
    }

    _isInited = true;
    return unit;
  }

  Future<Unit> _onSignIn(SignInRequest request) async {
    final user = await _signIn(request);
    if (user != null) {
      final userData = user.toJson();
      await _userLocalDataSource.saveUser(userData);
      _currentUser = user;
      _authStateManager.updateUser(_currentUser);
    }
    return unit;
  }

  Future<Unit> _onSignUp(SignUpRequest request) async {
    final user = await _signUp(request);
    if (user != null) {
      final userData = user.toJson();
      await _userLocalDataSource.saveUser(userData);
      _currentUser = user;
      _authStateManager.updateUser(_currentUser);
    }
    return unit;
  }

  Future<Unit> _onSignOut() async {
    if (_currentUser != null) {
      await _authService.signOut(_currentUser!.signInMethod);
      await _userLocalDataSource.deleteUser();
      _currentUser = null;
      _authStateManager.updateUser(_currentUser);
    }
    return unit;
  }

  Future<UserModel?> _signIn(SignInRequest request) async {
    User? firebaseUser;

    await request.when(
      emailWithPassword: (email, password) async {
        firebaseUser = await _authService.signInWithEmail(email, password);
      },
      google: () async {
        firebaseUser = await _authService.signInWithGoogle();
      },
      apple: () async {
        firebaseUser = await _authService.signInWithApple();
      },
    );

    if (firebaseUser == null) {
      return null;
    }

    final user = UserModelMapper.fromFirebaseUser(
      firebaseUser!,
      request.map(
        emailWithPassword: (_) => SignInMethod.emailWithPassword,
        google: (_) => SignInMethod.google,
        apple: (_) => SignInMethod.apple,
      ),
    );
    return user;
  }

  Future<UserModel?> _signUp(SignUpRequest request) async {
    User? firebaseUser;

    await request.when(
      emailWithPassword: (displayname, email, password) async {
        firebaseUser =
            await _authService.signUpWithPassword(displayname, email, password);
      },
    );

    if (firebaseUser == null) {
      return null;
    }

    final user = UserModelMapper.fromFirebaseUser(
      firebaseUser!,
      request.map(
        emailWithPassword: (data) => SignInMethod.emailWithPassword,
      ),
    );
    return user;
  }
}
