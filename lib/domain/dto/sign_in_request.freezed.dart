// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInRequest {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) emailWithPassword,
    required TResult Function() google,
    required TResult Function() apple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? emailWithPassword,
    TResult? Function()? google,
    TResult? Function()? apple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? emailWithPassword,
    TResult Function()? google,
    TResult Function()? apple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailWithPasswordRequest value)
        emailWithPassword,
    required TResult Function(_GoogleSignInRequest value) google,
    required TResult Function(_AppleSignInRequest value) apple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailWithPasswordRequest value)? emailWithPassword,
    TResult? Function(_GoogleSignInRequest value)? google,
    TResult? Function(_AppleSignInRequest value)? apple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailWithPasswordRequest value)? emailWithPassword,
    TResult Function(_GoogleSignInRequest value)? google,
    TResult Function(_AppleSignInRequest value)? apple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInRequestCopyWith<$Res> {
  factory $SignInRequestCopyWith(
          SignInRequest value, $Res Function(SignInRequest) then) =
      _$SignInRequestCopyWithImpl<$Res, SignInRequest>;
}

/// @nodoc
class _$SignInRequestCopyWithImpl<$Res, $Val extends SignInRequest>
    implements $SignInRequestCopyWith<$Res> {
  _$SignInRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailWithPasswordRequestImplCopyWith<$Res> {
  factory _$$EmailWithPasswordRequestImplCopyWith(
          _$EmailWithPasswordRequestImpl value,
          $Res Function(_$EmailWithPasswordRequestImpl) then) =
      __$$EmailWithPasswordRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$EmailWithPasswordRequestImplCopyWithImpl<$Res>
    extends _$SignInRequestCopyWithImpl<$Res, _$EmailWithPasswordRequestImpl>
    implements _$$EmailWithPasswordRequestImplCopyWith<$Res> {
  __$$EmailWithPasswordRequestImplCopyWithImpl(
      _$EmailWithPasswordRequestImpl _value,
      $Res Function(_$EmailWithPasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$EmailWithPasswordRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailWithPasswordRequestImpl implements _EmailWithPasswordRequest {
  const _$EmailWithPasswordRequestImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInRequest.emailWithPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailWithPasswordRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SignInRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailWithPasswordRequestImplCopyWith<_$EmailWithPasswordRequestImpl>
      get copyWith => __$$EmailWithPasswordRequestImplCopyWithImpl<
          _$EmailWithPasswordRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) emailWithPassword,
    required TResult Function() google,
    required TResult Function() apple,
  }) {
    return emailWithPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? emailWithPassword,
    TResult? Function()? google,
    TResult? Function()? apple,
  }) {
    return emailWithPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? emailWithPassword,
    TResult Function()? google,
    TResult Function()? apple,
    required TResult orElse(),
  }) {
    if (emailWithPassword != null) {
      return emailWithPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailWithPasswordRequest value)
        emailWithPassword,
    required TResult Function(_GoogleSignInRequest value) google,
    required TResult Function(_AppleSignInRequest value) apple,
  }) {
    return emailWithPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailWithPasswordRequest value)? emailWithPassword,
    TResult? Function(_GoogleSignInRequest value)? google,
    TResult? Function(_AppleSignInRequest value)? apple,
  }) {
    return emailWithPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailWithPasswordRequest value)? emailWithPassword,
    TResult Function(_GoogleSignInRequest value)? google,
    TResult Function(_AppleSignInRequest value)? apple,
    required TResult orElse(),
  }) {
    if (emailWithPassword != null) {
      return emailWithPassword(this);
    }
    return orElse();
  }
}

abstract class _EmailWithPasswordRequest implements SignInRequest {
  const factory _EmailWithPasswordRequest(
      {required final String email,
      required final String password}) = _$EmailWithPasswordRequestImpl;

  String get email;
  String get password;

  /// Create a copy of SignInRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailWithPasswordRequestImplCopyWith<_$EmailWithPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleSignInRequestImplCopyWith<$Res> {
  factory _$$GoogleSignInRequestImplCopyWith(_$GoogleSignInRequestImpl value,
          $Res Function(_$GoogleSignInRequestImpl) then) =
      __$$GoogleSignInRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInRequestImplCopyWithImpl<$Res>
    extends _$SignInRequestCopyWithImpl<$Res, _$GoogleSignInRequestImpl>
    implements _$$GoogleSignInRequestImplCopyWith<$Res> {
  __$$GoogleSignInRequestImplCopyWithImpl(_$GoogleSignInRequestImpl _value,
      $Res Function(_$GoogleSignInRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoogleSignInRequestImpl implements _GoogleSignInRequest {
  const _$GoogleSignInRequestImpl();

  @override
  String toString() {
    return 'SignInRequest.google()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) emailWithPassword,
    required TResult Function() google,
    required TResult Function() apple,
  }) {
    return google();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? emailWithPassword,
    TResult? Function()? google,
    TResult? Function()? apple,
  }) {
    return google?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? emailWithPassword,
    TResult Function()? google,
    TResult Function()? apple,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailWithPasswordRequest value)
        emailWithPassword,
    required TResult Function(_GoogleSignInRequest value) google,
    required TResult Function(_AppleSignInRequest value) apple,
  }) {
    return google(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailWithPasswordRequest value)? emailWithPassword,
    TResult? Function(_GoogleSignInRequest value)? google,
    TResult? Function(_AppleSignInRequest value)? apple,
  }) {
    return google?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailWithPasswordRequest value)? emailWithPassword,
    TResult Function(_GoogleSignInRequest value)? google,
    TResult Function(_AppleSignInRequest value)? apple,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(this);
    }
    return orElse();
  }
}

abstract class _GoogleSignInRequest implements SignInRequest {
  const factory _GoogleSignInRequest() = _$GoogleSignInRequestImpl;
}

/// @nodoc
abstract class _$$AppleSignInRequestImplCopyWith<$Res> {
  factory _$$AppleSignInRequestImplCopyWith(_$AppleSignInRequestImpl value,
          $Res Function(_$AppleSignInRequestImpl) then) =
      __$$AppleSignInRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppleSignInRequestImplCopyWithImpl<$Res>
    extends _$SignInRequestCopyWithImpl<$Res, _$AppleSignInRequestImpl>
    implements _$$AppleSignInRequestImplCopyWith<$Res> {
  __$$AppleSignInRequestImplCopyWithImpl(_$AppleSignInRequestImpl _value,
      $Res Function(_$AppleSignInRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppleSignInRequestImpl implements _AppleSignInRequest {
  const _$AppleSignInRequestImpl();

  @override
  String toString() {
    return 'SignInRequest.apple()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppleSignInRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) emailWithPassword,
    required TResult Function() google,
    required TResult Function() apple,
  }) {
    return apple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? emailWithPassword,
    TResult? Function()? google,
    TResult? Function()? apple,
  }) {
    return apple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? emailWithPassword,
    TResult Function()? google,
    TResult Function()? apple,
    required TResult orElse(),
  }) {
    if (apple != null) {
      return apple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailWithPasswordRequest value)
        emailWithPassword,
    required TResult Function(_GoogleSignInRequest value) google,
    required TResult Function(_AppleSignInRequest value) apple,
  }) {
    return apple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailWithPasswordRequest value)? emailWithPassword,
    TResult? Function(_GoogleSignInRequest value)? google,
    TResult? Function(_AppleSignInRequest value)? apple,
  }) {
    return apple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailWithPasswordRequest value)? emailWithPassword,
    TResult Function(_GoogleSignInRequest value)? google,
    TResult Function(_AppleSignInRequest value)? apple,
    required TResult orElse(),
  }) {
    if (apple != null) {
      return apple(this);
    }
    return orElse();
  }
}

abstract class _AppleSignInRequest implements SignInRequest {
  const factory _AppleSignInRequest() = _$AppleSignInRequestImpl;
}
