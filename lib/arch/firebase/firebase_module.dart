import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/firebase_options.dart';

@module
abstract class FirebaseModule {
  @preResolve
  Future<FirebaseApp> get initFirebaseApp {
    return Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
