import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_bloc_models.freezed.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  ForgotPasswordStateData get data => this as ForgotPasswordStateData;

  const ForgotPasswordState._();

  const factory ForgotPasswordState.data() = ForgotPasswordStateData;

  const factory ForgotPasswordState.empty() = _Empty;
}

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.init() = ForgotPasswordEventInit;
}

@freezed
class ForgotPasswordSR with _$ForgotPasswordSR {
  const factory ForgotPasswordSR.inited() = _Inited;
}
