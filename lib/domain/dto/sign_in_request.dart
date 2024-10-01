import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_request.freezed.dart';

@freezed
class SignInRequest with _$SignInRequest {
  const factory SignInRequest.emailWithPassword({
    required String email,
    required String password,
  }) = _EmailWithPasswordRequest;

  const factory SignInRequest.google() = _GoogleSignInRequest;

  const factory SignInRequest.apple() = _AppleSignInRequest;
}
