import 'package:json_annotation/json_annotation.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';

class SignInMethodConverter implements JsonConverter<SignInMethod, String> {
  const SignInMethodConverter();

  @override
  SignInMethod fromJson(String json) {
    return SignInMethodExtension.fromString(json);
  }

  @override
  String toJson(SignInMethod signInMethod) {
    return signInMethod.asString;
  }
}
