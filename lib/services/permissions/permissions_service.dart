import 'package:permission_handler/permission_handler.dart';

abstract class PermissionsService {
  Future< PermissionStatus>  checkPermissionStatus(Permission permission);

  Future<PermissionStatus>  requestPermission(Permission permission);
}
