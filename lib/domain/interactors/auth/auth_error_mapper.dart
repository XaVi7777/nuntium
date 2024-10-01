import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/domain/enums/firebase_auth_error.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class AuthErrorMapper {
  static String fromFailure(Failure failure) {
    return failure.maybeWhen(
      firebaAuthFailure: (message) =>
          FirebaseAuthErrorMapper.fromCode(message).message,
      connectionFailure: (message) => LocaleKeys.failure_connection,
      unknownFailure: (message) => LocaleKeys.something_went_wrong,
      orElse: () => LocaleKeys.something_went_wrong,
    );
  }
}
