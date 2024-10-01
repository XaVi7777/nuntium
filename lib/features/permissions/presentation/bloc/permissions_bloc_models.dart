import 'package:freezed_annotation/freezed_annotation.dart';

part 'permissions_bloc_models.freezed.dart';

@freezed
class PermissionsState with _$PermissionsState {
  const factory PermissionsState.empty() = PermissionsStateEmpty;
}

@freezed
class PermissionsEvent with _$PermissionsEvent {
  const factory PermissionsEvent.checkNotificationPermission() =
      PermissionsEventCheckNotification;
  const factory PermissionsEvent.setHasBeenRequested() =
      PermissionsEventSetHasBeenRequested;
  const factory PermissionsEvent.requestNotificationPermission() =
      PermissionsEventRequestNotification;
  const factory PermissionsEvent.openSettings() = PermissionsEventOpenSettings;
}

@freezed
class PermissionsSR with _$PermissionsSR {
  const factory PermissionsSR.showOpenSettingsDialog() =
      _ShowOpenSettingsDialog;
  const factory PermissionsSR.hasBeenRequested() = _HasBeenRequested;
}
