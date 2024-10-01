import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:nuntium/services/firebase_messaging/firebase_messaging_service.dart';

class FirebaseMessagingServiceImpl implements FirebaseMessagingService {
  final FirebaseMessaging _firebaseMessaging;

  FirebaseMessagingServiceImpl(this._firebaseMessaging);

  @override
  Future<bool> hasNotificationPermission() async {
    final settings = await _firebaseMessaging.getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  @override
  Future<void> requestNotificationPermission({
    bool alert = true,
    bool announcement = false,
    bool badge = true,
    bool carPlay = false,
    bool criticalAlert = false,
    bool provisional = false,
    bool sound = true,
  }) async {
    await _firebaseMessaging.requestPermission(
      alert: alert,
      announcement: announcement,
      badge: badge,
      carPlay: carPlay,
      criticalAlert: criticalAlert,
      provisional: provisional,
      sound: sound,
    );
  }

  @override
  Future<String?> getToken() => _firebaseMessaging.getToken();

  @override
  Future<bool> isDenied() async {
    final settings = await _firebaseMessaging.getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.denied;
  }
}
