import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/permissions/permissions_repository.dart';
import 'package:nuntium/services/permissions/permissions_service.dart';
import 'package:permission_handler/permission_handler.dart';

@Singleton(as: PermissionsRepository)
class PermissionsRepositoryImpl implements PermissionsRepository {
  final PermissionsService _permissionsService;
  final ErrorHandler _errorHandler;

  PermissionsRepositoryImpl(
    this._permissionsService,
    this._errorHandler,
  );

  bool _isInited = false;

  final Map<Permission, PermissionStatus> _permissionStatuses = {};

  @override
  Future<Either<Failure, Unit>> init() => _errorHandler.execute(_onInit);

  @override
  bool hasPermission(Permission permission) =>
      _permissionStatuses[permission] == PermissionStatus.granted;

  @override
  Future<Either<Failure, Unit>> requestPermission(Permission permission) =>
      _errorHandler.execute(() => _onRequestPermission(permission));

  Future<Unit> _onInit() async {
    if (_isInited) {
      return unit;
    }

    for (final permission in _permissionStatuses.keys) {
      final status =
          await _permissionsService.checkPermissionStatus(permission);
      _permissionStatuses[permission] = status;
    }

    _isInited = true;
    return unit;
  }

  Future<Unit> _onRequestPermission(Permission permission) async {
    final result = await _permissionsService.requestPermission(permission);
    _permissionStatuses[permission] = result;
    return unit;
  }
}
