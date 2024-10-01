enum SignInMethod {
  google,
  apple,
  emailWithPassword,
}

extension SignInMethodExtension on SignInMethod {
  String get asString => toString().split('.').last;

  static SignInMethod fromString(String value) {
    for (final method in SignInMethod.values) {
      if (method.asString == value) {
        return method;
      }
    }
    throw Exception('Invalid SignInMethod: $value');
  }
}
