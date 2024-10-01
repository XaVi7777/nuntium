import 'package:injectable/injectable.dart';
import 'package:nuntium/services/permissions/permissions_service.dart';
import 'package:nuntium/services/permissions/permissions_service_impl.dart';

@module
abstract class PermissionsModule {
  @singleton
  PermissionsService permissionsService() => PermissionsServiceImpl();
}
