import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/services/auth/auth_service.dart';
import 'package:nuntium/services/auth/auth_service_impl.dart';

@module
abstract class AuthModule {
  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @singleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
    scopes: ['profile', 'email']
  );

  @singleton
  AuthService get authService => AuthServiceImpl(firebaseAuth, googleSignIn);
}
