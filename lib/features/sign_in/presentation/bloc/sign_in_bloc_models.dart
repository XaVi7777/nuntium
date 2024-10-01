import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';

part 'sign_in_bloc_models.freezed.dart';

@freezed
class SignInState with _$SignInState {
  SignInStateData get data => this as SignInStateData;

  const SignInState._();

  const factory SignInState.data() = SignInStateData;
}

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signIn(
    SignInMethod signInMethod, {
    Map<String, dynamic>? formData,
  }) = SignInEventSignIn;
  const factory SignInEvent.leavePage() = SignInEventLeavePage;
}

@freezed
class SignInSR with _$SignInSR {
  const factory SignInSR.showLoader() = _ShowLoader;
  const factory SignInSR.hideLoader() = _HideLoader;
}
