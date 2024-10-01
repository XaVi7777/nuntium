import 'package:nuntium/data/models/export.dart';

abstract class NotificationRepository {
  Stream<SnackbarMessage> get notificationStream;
  void sendNotification(SnackbarMessage message);
  void dispose();
}
