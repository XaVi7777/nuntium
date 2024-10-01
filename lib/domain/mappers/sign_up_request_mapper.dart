
import 'package:nuntium/core/ui/ui_form/form_field_type.dart';
import 'package:nuntium/domain/dto/sign_up_request.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';

extension SignUpRequestMapper on SignUpRequest {
  static SignUpRequest fromFormData(
    SignInMethod signInMethod,
    Map<String, dynamic> data,
  ) {
    switch (signInMethod) {
      case SignInMethod.emailWithPassword:
        return SignUpRequest.emailWithPassword(
          displayName: data[FormFieldType.username.toString()] as String,
          email: data[FormFieldType.email.toString()] as String,
          password: data[FormFieldType.password.toString()] as String,
        );
      default:
        throw Exception('Unipmented sign in method');
    }
  }
}
