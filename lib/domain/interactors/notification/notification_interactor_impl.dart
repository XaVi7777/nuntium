import 'package:injectable/injectable.dart';
import 'package:nuntium/data/models/snackbar_message/snackbar_message.dart';
import 'package:nuntium/data/notifications/notifications_repository.dart';
import 'package:nuntium/domain/interactors/notification/notification_interactor.dart';

@Singleton(as: NotificationInteractor)
class NotificationInteractorImpl implements NotificationInteractor {
  final NotificationRepository _notificationRepository;

  NotificationInteractorImpl(this._notificationRepository);

  @override
  Stream<SnackbarMessage> get notificationStream =>
      _notificationRepository.notificationStream;

  @override
  void sendNotification(SnackbarMessage message) {
    _notificationRepository.sendNotification(message);
  }

  @override
  void dispose() {
    _notificationRepository.dispose();
  }
}
