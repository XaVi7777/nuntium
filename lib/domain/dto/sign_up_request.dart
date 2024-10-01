import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';

@freezed
class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest.emailWithPassword({
    required String displayName,
    required String email,
    required String password,
  }) = _EmailWithPasswordRequest;
}
