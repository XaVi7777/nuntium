import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/widgets/snackbar_manager/bloc/snackbar_manager_bloc_models.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc.dart';
import 'package:nuntium/data/models/snackbar_message/snackbar_message.dart';
import 'package:nuntium/domain/interactors/notification/notification_interactor.dart';

@injectable
class SnackbarManagerBloc extends SrBloc<SnackbarManagerEvent,
    SnackbarManagerState, SnackbarManagerSR> {
  final NotificationInteractor _notificationInteractor;

  StreamSubscription<SnackbarMessage>? _subscription;

  SnackbarManagerBloc(this._notificationInteractor)
      : super(const SnackbarManagerState.empty()) {
    on<SnackbarManagerEventInit>(_onInit);
  }

  @override
  Future<void> close() {
    _unSubscribeToNotificationsStream();
    _notificationInteractor.dispose();
    return super.close();
  }

  FutureOr<void> _onInit(
      SnackbarManagerEventInit event, Emitter<SnackbarManagerState> emit) {
    _subscribeToNotificationsStream();
  }

  void _subscribeToNotificationsStream() {
    _subscription ??=
        _notificationInteractor.notificationStream.listen(_onMessageReceived);
  }

  void _onMessageReceived(SnackbarMessage message) {
    addSr(SnackbarManagerSR.showMessage(message));
  }

  void _unSubscribeToNotificationsStream() {
    _subscription?.cancel();
    _subscription = null;
  }
}
