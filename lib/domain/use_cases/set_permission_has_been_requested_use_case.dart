import 'package:injectable/injectable.dart';
import 'package:nuntium/data/remote_notifications/remote_notifications_repository.dart';

@injectable
class SetPermissionHasBeenRequestedUseCase {
  final RemoteNotificationsRepository _notificationsRepository;

  SetPermissionHasBeenRequestedUseCase(this._notificationsRepository);

  Future<void> call() async {
    await _notificationsRepository.setPermissionHasBeenRequested(true);
  }
}
