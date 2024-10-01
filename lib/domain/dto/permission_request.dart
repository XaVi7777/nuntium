import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/domain/dto/notifications_permission_request.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_request.freezed.dart';

@freezed
class PermissionRequest with _$PermissionRequest {
  const factory PermissionRequest.general({
    required Permission permission,
  }) = GeneralPermissionRequest;

  const factory PermissionRequest.notifications({
    NotificationsPermissionRequest? notificationRequest,
  }) = NotificationPermissionRequest;
}
