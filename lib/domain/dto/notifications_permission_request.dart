import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_permission_request.freezed.dart';

@freezed
class NotificationsPermissionRequest with _$NotificationsPermissionRequest {
  const factory NotificationsPermissionRequest({
    @Default(true) bool alert,
    @Default(false) bool announcement,
    @Default(true) bool badge,
    @Default(false) bool carPlay,
    @Default(false) bool criticalAlert,
    @Default(false) bool provisional,
    @Default(true) bool sound,
  }) = _NotificationsPermissionRequest;
}
