import 'package:nuntium/core/ui/ui_form/form_field_type.dart';
import 'package:nuntium/domain/dto/sign_in_request.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';

extension SignInRequestMapper on SignInRequest {
  static SignInRequest fromFormData(
    SignInMethod signInMethod,
    Map<String, dynamic>? data,
  ) {
    switch (signInMethod) {
      case SignInMethod.emailWithPassword:
        if (data == null) {
          throw ArgumentError(
              'Data is required for email and password sign-in.');
        }
        return SignInRequest.emailWithPassword(
          email: data[FormFieldType.email.toString()] as String,
          password: data[FormFieldType.password.toString()] as String,
        );
      case SignInMethod.google:
        return const SignInRequest.google();
      case SignInMethod.apple:
        return const SignInRequest.apple();
      default:
        throw Exception('Unimplemented sign-in method');
    }
  }
}
