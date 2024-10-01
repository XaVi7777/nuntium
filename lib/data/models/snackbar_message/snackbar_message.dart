import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/snackbar_message/snackbar_message_type.dart';

part 'snackbar_message.freezed.dart';

@freezed
class SnackbarMessage with _$SnackbarMessage {
  const factory SnackbarMessage({
    required String message,
    @Default(SnackbarMessageType.none) SnackbarMessageType type,
  }) = _SnackbarMessage;
}
