import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_response_error.freezed.dart';

@freezed
class CommonResponseError<Custom> with _$CommonResponseError<dynamic> {
  bool get isNoNetwork => this is _NoNetwork;

  bool get isUnAuthorized => this is _UnAuthorized;

  bool get isTooManyRequests => this is _TooManyRequests;

  bool get isCustomError => this is _CustomError<Custom>;

  bool get isUndefinedError => this is _UndefinedError;

  Custom? get safeCustom => this is _CustomError<Custom>
      ? (this as _CustomError<Custom>).customError
      : null;

  String get message {
    return when(
      noNetwork: () => 'No network connection',
      unAuthorized: () => 'Unauthorized access',
      tooManyRequests: () => 'Too many requests',
      customError: (customError) => 'Custom error: $customError',
      undefinedError: (errorObject) => 'Undefined error: $errorObject',
    );
  }

  const CommonResponseError._();

  const factory CommonResponseError.noNetwork() = _NoNetwork;

  const factory CommonResponseError.unAuthorized() = _UnAuthorized;

  const factory CommonResponseError.tooManyRequests() = _TooManyRequests;

  const factory CommonResponseError.customError(Custom customError) =
      _CustomError;

  const factory CommonResponseError.undefinedError(Object? errorObject) =
      _UndefinedError;
}
