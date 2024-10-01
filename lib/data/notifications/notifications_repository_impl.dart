import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:nuntium/data/models/snackbar_message/snackbar_message.dart';
import 'package:nuntium/data/notifications/notifications_repository.dart';

@Singleton(as: NotificationRepository)
class NotificationRepositoryImpl implements NotificationRepository {
  StreamController<SnackbarMessage>? _notificationController;

  NotificationRepositoryImpl();

  bool get _notificationControllerIsClosed =>
      _notificationController?.isClosed ?? true;

  @override
  Stream<SnackbarMessage> get notificationStream {
    if (_notificationControllerIsClosed) {
      _initializeStream();
    }
    return _notificationController!.stream;
  }

  @override
  void sendNotification(SnackbarMessage message) {
    if (!_notificationControllerIsClosed) {
      _notificationController!.add(message);
    }
  }

  @override
  void dispose() {
    _notificationController?.close();
    _notificationController = null;
  }

  void _initializeStream() {
    _notificationController ??= StreamController<SnackbarMessage>.broadcast();
  }
}
