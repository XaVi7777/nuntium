import 'package:nuntium/services/permissions/permissions_service.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionsServiceImpl implements PermissionsService {
  @override
  Future<PermissionStatus> checkPermissionStatus(Permission permission) async {
    final status = await permission.status;
    return status;
  }

  @override
  Future<PermissionStatus> requestPermission(Permission permission) async {
    final status = await permission.request();

    return status;
  }
}
