import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';

part 'sign_up_bloc_models.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  SignUpStateData get data => this as SignUpStateData;

  const SignUpState._();

  const factory SignUpState.data() = SignUpStateData;
}

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUp(
    SignInMethod signInMethod,
    Map<String, dynamic> formData,
  ) = SignUpEventSubmit;
}

@freezed
class SignUpSR with _$SignUpSR {
  const factory SignUpSR.showLoader() = _ShowLoader;
  const factory SignUpSR.hideLoader() = _HideLoader;
}
