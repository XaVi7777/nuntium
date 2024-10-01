import 'package:firebase_auth/firebase_auth.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';

abstract class AuthService {
  User? get currentUser;
  Future<User?> signUpWithPassword(
    String displayname,
    String email,
    String password,
  );
  Future<User?> signInWithEmail(String email, String password);
  Future<User?> signInWithGoogle();
  Future<User?> signInWithApple();
  Future<void> signOut(SignInMethod signInMethod);
}
