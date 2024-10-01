import 'package:nuntium/generated/translations/locale_keys.g.dart';

enum FirebaseAuthError {
  emailAlreadyInUse,
  invalidCredential,
  invalidDisplayName,
  invalidEmail,
  invalidPassword,
  unknown,
}

extension FirebaseAuthErrorMapper on FirebaseAuthError {
  static FirebaseAuthError fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return FirebaseAuthError.emailAlreadyInUse;
      case 'invalid-credential':
        return FirebaseAuthError.invalidCredential;
      case 'invalid-display-name':
        return FirebaseAuthError.invalidDisplayName;
      case 'invalid-email':
        return FirebaseAuthError.invalidEmail;
      case 'invalid-password':
        return FirebaseAuthError.invalidPassword;
      default:
        return FirebaseAuthError.unknown;
    }
  }

  String get message {
    switch (this) {
      case FirebaseAuthError.emailAlreadyInUse:
        return LocaleKeys.firebase_auth_error_email_already_in_use;
      case FirebaseAuthError.invalidCredential:
        return LocaleKeys.firebase_auth_error_invalid_credential;
      case FirebaseAuthError.invalidDisplayName:
        return LocaleKeys.firebase_auth_error_invalid_display_name;
      case FirebaseAuthError.invalidEmail:
        return LocaleKeys.firebase_auth_error_invalid_email;
      case FirebaseAuthError.invalidPassword:
        return LocaleKeys.firebase_auth_error_invalid_password;
      case FirebaseAuthError.unknown:
      default:
        return LocaleKeys.something_went_wrong;
    }
  }
}
