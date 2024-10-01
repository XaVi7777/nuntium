import 'package:nuntium/data/models/export.dart';

abstract class NotificationInteractor {
  Stream<SnackbarMessage> get notificationStream;
  void sendNotification(SnackbarMessage message);
  void dispose();
}
