import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';
import 'package:nuntium/services/auth/auth_service.dart';

class AuthServiceImpl implements AuthService {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthServiceImpl(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<User?> signUpWithPassword(
    String displayName,
    String email,
    String password,
  ) async {
    // ignore: avoid_print
    print('signUpWithPassword');
    final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    // ignore: avoid_print
    print('userCredential $userCredential');
    final user = userCredential.user;

    if (user != null) {
      await user.updateDisplayName(displayName);
      await user.reload();
    }

    return currentUser;
  }

  @override
  Future<User?> signInWithEmail(
    String email,
    String password,
  ) async {
    final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  @override
  Future<User?> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      return null;
    }
    final googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final userCredential = await _firebaseAuth.signInWithCredential(credential);
    return userCredential.user;
  }

  @override
  Future<User?> signInWithApple() async {
    return null;
  }

  @override
  Future<void> signOut(SignInMethod signInMethod) async {
    final signOutTasks = <Future<void>>[
      _firebaseAuth.signOut(),
    ];

    switch (signInMethod) {
      case SignInMethod.google:
        signOutTasks.add(_googleSignIn.signOut());
      case SignInMethod.emailWithPassword:
        break;
      default:
        throw Exception('Unimplmented sign in method');
    }
    await Future.wait(signOutTasks);
  }
}
