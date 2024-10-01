import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/services/firebase_messaging/firebase_messaging_service.dart';
import 'package:nuntium/services/firebase_messaging/firebase_messaging_service_impl.dart';

@module
abstract class FirebaseMessagingModule {
  @singleton
  FirebaseMessaging firebaseMessaging() => FirebaseMessaging.instance;

  @singleton
  FirebaseMessagingService firebaseMessagingService(
          FirebaseMessaging firebaseMessaging) =>
      FirebaseMessagingServiceImpl(firebaseMessaging);
}
