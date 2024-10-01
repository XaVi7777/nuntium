import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/snackbar_message/snackbar_message.dart';

part 'snackbar_manager_bloc_models.freezed.dart';

@freezed
class SnackbarManagerEvent with _$SnackbarManagerEvent {
  const factory SnackbarManagerEvent.init() = SnackbarManagerEventInit;
}

@freezed
class SnackbarManagerState with _$SnackbarManagerState {
  const SnackbarManagerState._();

  const factory SnackbarManagerState.empty() = SnackbarManagerStateEmpty;
}

@freezed
class SnackbarManagerSR with _$SnackbarManagerSR {
  const factory SnackbarManagerSR.showMessage(SnackbarMessage message) =
      _SnackbarManagerShowMessage;
}
