import 'package:injectable/injectable.dart';
import 'package:nuntium/data/models/snackbar_message/snackbar_message.dart';
import 'package:nuntium/data/notifications/notifications_repository.dart';

@injectable
class SendNotificationUseCase {
  final NotificationRepository _notificationRepository;

  SendNotificationUseCase(this._notificationRepository);

  void call(SnackbarMessage message) {
    _notificationRepository.sendNotification(message);
  }
}
