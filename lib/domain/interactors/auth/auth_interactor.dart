import 'package:nuntium/domain/enums/sign_in_method.dart';

abstract class AuthInteractor {
  Stream<bool> get authStream;

  Future<void> signIn(SignInMethod signInMethod, Map<String, dynamic>? data);

  Future<void> signOut();

  Future<void> signUp(SignInMethod signInMethod, Map<String, dynamic> data);
}
