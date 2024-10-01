import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc.dart';
import 'package:nuntium/domain/dto/permission_request.dart';
import 'package:nuntium/domain/use_cases/check_permission_use_case.dart';
import 'package:nuntium/domain/use_cases/is_denied_notification_permission_use_case.dart';
import 'package:nuntium/domain/use_cases/open_app_settings_use_case.dart';
import 'package:nuntium/domain/use_cases/request_permission_use_case.dart';
import 'package:nuntium/domain/use_cases/set_permission_has_been_requested_use_case.dart';
import 'package:nuntium/features/permissions/presentation/bloc/permissions_bloc_models.dart';
import 'package:nuntium/services/app_lifecycle_service/app_lifecycle_service.dart';

@injectable
class PermissionsBloc
    extends SrBloc<PermissionsEvent, PermissionsState, PermissionsSR> {
  final IsDeniedNotificationPermissionUseCase
      _isDeniedNotificationPermissionUseCase;
  final RequestPermissionUseCase _requestPermissionUseCase;
  final SetPermissionHasBeenRequestedUseCase
      _setPermissionHasBeenRequestedUseCase;
  final CheckPermissionUseCase _checkPermissionUseCase;
  final OpenAppSettingsUseCase _openAppSettingsUseCase;
  final AppLifecycleService _appLifecycleService;

  late final StreamSubscription<AppLifecycleState> _lifecycleSubscription;

  PermissionsBloc(
    this._isDeniedNotificationPermissionUseCase,
    this._requestPermissionUseCase, 
    this._openAppSettingsUseCase,
    this._checkPermissionUseCase,
    this._appLifecycleService,
    this._setPermissionHasBeenRequestedUseCase,
  ) : super(const PermissionsState.empty()) {
    _lifecycleSubscription =
        _appLifecycleService.lifecycleStream.listen(_onReceiveAppState);

    on<PermissionsEventRequestNotification>(_onRequestPermission);
    on<PermissionsEventOpenSettings>(_onOpenSettings);
    on<PermissionsEventCheckNotification>(_onCheckPermission);
    on<PermissionsEventSetHasBeenRequested>(_onSetHasBeenRequested);
  }

  @override
  Future<void> close() {
    _lifecycleSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onRequestPermission(
    PermissionsEventRequestNotification event,
    Emitter<PermissionsState> emit,
  ) async {
    final isDenied = await _isDeniedNotificationPermissionUseCase.call();

    if (!isDenied) {
      final requestPermissionResult = await _requestPermissionUseCase
          .call(const PermissionRequest.notifications());
      if (requestPermissionResult.isRight()) {
        await _setPermissionHasBeenRequestedUseCase.call();
        addSr(const PermissionsSR.hasBeenRequested());
      }
    } else {
      addSr(const PermissionsSR.showOpenSettingsDialog());
    }
  }

  FutureOr<void> _onOpenSettings(
    PermissionsEventOpenSettings event,
    Emitter<PermissionsState> emit,
  ) async {
    await _openAppSettingsUseCase.call();
  }

  FutureOr<void> _onCheckPermission(
    PermissionsEventCheckNotification event,
    Emitter<PermissionsState> emit,
  ) async {
    final permissionIsGranted = await _checkPermissionUseCase
        .call(const PermissionRequest.notifications());
    if (permissionIsGranted) {
      await _setPermissionHasBeenRequestedUseCase.call();
      addSr(const PermissionsSR.hasBeenRequested());
    }
  }

  FutureOr<void> _onSetHasBeenRequested(
    PermissionsEventSetHasBeenRequested event,
    Emitter<PermissionsState> emit,
  ) async {
    await _setPermissionHasBeenRequestedUseCase.call();
    addSr(const PermissionsSR.hasBeenRequested());
  }

  void _onReceiveAppState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      add(const PermissionsEvent.checkNotificationPermission());
    }
  }
}
