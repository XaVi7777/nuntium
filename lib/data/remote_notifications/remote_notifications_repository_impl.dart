import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/data_sources/local_datasource/shared_prefs_data_sources/permissions_local_data_source/permissions_local_data_source.dart';
import 'package:nuntium/data/remote_notifications/remote_notifications_repository.dart';
import 'package:nuntium/domain/dto/notifications_permission_request.dart';
import 'package:nuntium/services/firebase_messaging/firebase_messaging_service.dart';
import 'package:permission_handler/permission_handler.dart';

@Singleton(as: RemoteNotificationsRepository)
class RemoteNotificationsRepositoryImpl
    implements RemoteNotificationsRepository {
  final FirebaseMessagingService _firebaseMessagingService;
  final ErrorHandler _errorHandler;
  final PermissionsLocalDataSource _localDataSource;

  RemoteNotificationsRepositoryImpl(
    this._firebaseMessagingService,
    this._errorHandler,
    this._localDataSource,
  );

  @override
  Future<bool> get permissionHasBeenRequested =>
      _localDataSource.getPermissionHasBeenRequested();

  @override
  Future<void> setPermissionHasBeenRequested(bool value) =>
      _localDataSource.setPermissionHasBeenRequested(value);

  @override
  Future<bool> get hasNotificationPermission =>
      _firebaseMessagingService.hasNotificationPermission();

  @override
  Future<Either<Failure, Unit>> requestNotificationPermission(
    NotificationsPermissionRequest options,
  ) =>
      _errorHandler.execute(() => _onRequestPermission(options));

  @override
  Future<bool> isDenied() async {
    if (Platform.isIOS) {
      return _firebaseMessagingService.isDenied();
    } else if (Platform.isAndroid) {
      final status = await Permission.notification.status;
      return status.isPermanentlyDenied;
    } else {
      return false;
    }
  }

  Future<Unit> _onRequestPermission(
      NotificationsPermissionRequest options) async {
    await _firebaseMessagingService.requestNotificationPermission(
      alert: options.alert,
      announcement: options.announcement,
      badge: options.badge,
      carPlay: options.carPlay,
      criticalAlert: options.criticalAlert,
      provisional: options.provisional,
      sound: options.sound,
    );
    return unit;
  }
}
