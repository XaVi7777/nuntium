import 'package:injectable/injectable.dart';
import 'package:nuntium/data/remote_notifications/remote_notifications_repository.dart';

@injectable
class IsDeniedNotificationPermissionUseCase {
  final RemoteNotificationsRepository _remoteNotificationsRepository;

  IsDeniedNotificationPermissionUseCase(this._remoteNotificationsRepository);

  Future<bool> call() => _remoteNotificationsRepository.isDenied();
}
