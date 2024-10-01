// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpRequest {
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName, String email, String password)
        emailWithPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName, String email, String password)?
        emailWithPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName, String email, String password)?
        emailWithPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailWithPasswordRequest value)
        emailWithPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailWithPasswordRequest value)? emailWithPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailWithPasswordRequest value)? emailWithPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpRequestCopyWith<SignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) then) =
      _$SignUpRequestCopyWithImpl<$Res, SignUpRequest>;
  @useResult
  $Res call({String displayName, String email, String password});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res, $Val extends SignUpRequest>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailWithPasswordRequestImplCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$$EmailWithPasswordRequestImplCopyWith(
          _$EmailWithPasswordRequestImpl value,
          $Res Function(_$EmailWithPasswordRequestImpl) then) =
      __$$EmailWithPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName, String email, String password});
}

/// @nodoc
class __$$EmailWithPasswordRequestImplCopyWithImpl<$Res>
    extends _$SignUpRequestCopyWithImpl<$Res, _$EmailWithPasswordRequestImpl>
    implements _$$EmailWithPasswordRequestImplCopyWith<$Res> {
  __$$EmailWithPasswordRequestImplCopyWithImpl(
      _$EmailWithPasswordRequestImpl _value,
      $Res Function(_$EmailWithPasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$EmailWithPasswordRequestImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required this.displayName, required this.email, required this.password});

  @override
  final String displayName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpRequest.emailWithPassword(displayName: $displayName, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailWithPasswordRequestImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName, email, password);

  /// Create a copy of SignUpRequest
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
    required TResult Function(String displayName, String email, String password)
        emailWithPassword,
  }) {
    return emailWithPassword(displayName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName, String email, String password)?
        emailWithPassword,
  }) {
    return emailWithPassword?.call(displayName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName, String email, String password)?
        emailWithPassword,
    required TResult orElse(),
  }) {
    if (emailWithPassword != null) {
      return emailWithPassword(displayName, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailWithPasswordRequest value)
        emailWithPassword,
  }) {
    return emailWithPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailWithPasswordRequest value)? emailWithPassword,
  }) {
    return emailWithPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailWithPasswordRequest value)? emailWithPassword,
    required TResult orElse(),
  }) {
    if (emailWithPassword != null) {
      return emailWithPassword(this);
    }
    return orElse();
  }
}

abstract class _EmailWithPasswordRequest implements SignUpRequest {
  const factory _EmailWithPasswordRequest(
      {required final String displayName,
      required final String email,
      required final String password}) = _$EmailWithPasswordRequestImpl;

  @override
  String get displayName;
  @override
  String get email;
  @override
  String get password;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailWithPasswordRequestImplCopyWith<_$EmailWithPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
