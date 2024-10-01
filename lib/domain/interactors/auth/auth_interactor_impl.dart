import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/data/notifications/notifications_repository.dart';
import 'package:nuntium/data/user/user_repository.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';
import 'package:nuntium/domain/interactors/auth/auth_error_mapper.dart';
import 'package:nuntium/domain/interactors/auth/auth_interactor.dart';
import 'package:nuntium/domain/mappers/sign_in_request_mapper.dart';
import 'package:nuntium/domain/mappers/sign_up_request_mapper.dart';

@Singleton(as: AuthInteractor)
class AuthInteractorImpl implements AuthInteractor {
  final UserRepository _userRepository;
  final NotificationRepository _notificationRepository;

  AuthInteractorImpl(
    this._userRepository,
    this._notificationRepository,
  );

  @override
  Stream<bool> get authStream => _userRepository.authStream;

  @override
  Future<void> signIn(
    SignInMethod signInMethod,
    Map<String, dynamic>? data,
  ) async {
    final request = SignInRequestMapper.fromFormData(signInMethod, data);
    final signInResult = await _userRepository.signIn(request);
    _handleAuthResult(signInResult);
  }

  @override
  Future<void> signUp(
    SignInMethod signInMethod,
    Map<String, dynamic> data,
  ) async {
    final request = SignUpRequestMapper.fromFormData(signInMethod, data);
    final signUpResult = await _userRepository.signUp(request);
    _handleAuthResult(signUpResult);
  }

  @override
  Future<void> signOut() async {
    final signOutResult = await _userRepository.signOut();
    _handleAuthResult(signOutResult);
  }

  void _handleAuthResult(Either<Failure, Unit> result) {
    final failure = result.fold((l) => l, (_) => null);

    if (failure != null) {
      final message = SnackbarMessage(
        message: AuthErrorMapper.fromFailure(failure),
        type: SnackbarMessageType.error,
      );
      _sendNotification(message);
    }
  }

  void _sendNotification(SnackbarMessage message) {
    _notificationRepository.sendNotification(message);
  }
}
