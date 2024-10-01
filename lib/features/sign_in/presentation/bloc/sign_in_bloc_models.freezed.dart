// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInStateDataImplCopyWith<$Res> {
  factory _$$SignInStateDataImplCopyWith(_$SignInStateDataImpl value,
          $Res Function(_$SignInStateDataImpl) then) =
      __$$SignInStateDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStateDataImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateDataImpl>
    implements _$$SignInStateDataImplCopyWith<$Res> {
  __$$SignInStateDataImplCopyWithImpl(
      _$SignInStateDataImpl _value, $Res Function(_$SignInStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInStateDataImpl extends SignInStateData {
  const _$SignInStateDataImpl() : super._();

  @override
  String toString() {
    return 'SignInState.data()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInStateDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() data,
  }) {
    return data();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? data,
  }) {
    return data?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SignInStateData extends SignInState {
  const factory SignInStateData() = _$SignInStateDataImpl;
  const SignInStateData._() : super._();
}

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SignInMethod signInMethod, Map<String, dynamic>? formData)
        signIn,
    required TResult Function() leavePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SignInMethod signInMethod, Map<String, dynamic>? formData)?
        signIn,
    TResult? Function()? leavePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInMethod signInMethod, Map<String, dynamic>? formData)?
        signIn,
    TResult Function()? leavePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEventSignIn value) signIn,
    required TResult Function(SignInEventLeavePage value) leavePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEventSignIn value)? signIn,
    TResult? Function(SignInEventLeavePage value)? leavePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEventSignIn value)? signIn,
    TResult Function(SignInEventLeavePage value)? leavePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInEventSignInImplCopyWith<$Res> {
  factory _$$SignInEventSignInImplCopyWith(_$SignInEventSignInImpl value,
          $Res Function(_$SignInEventSignInImpl) then) =
      __$$SignInEventSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInMethod signInMethod, Map<String, dynamic>? formData});
}

/// @nodoc
class __$$SignInEventSignInImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInEventSignInImpl>
    implements _$$SignInEventSignInImplCopyWith<$Res> {
  __$$SignInEventSignInImplCopyWithImpl(_$SignInEventSignInImpl _value,
      $Res Function(_$SignInEventSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInMethod = null,
    Object? formData = freezed,
  }) {
    return _then(_$SignInEventSignInImpl(
      null == signInMethod
          ? _value.signInMethod
          : signInMethod // ignore: cast_nullable_to_non_nullable
              as SignInMethod,
      formData: freezed == formData
          ? _value._formData
          : formData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$SignInEventSignInImpl implements SignInEventSignIn {
  const _$SignInEventSignInImpl(this.signInMethod,
      {final Map<String, dynamic>? formData})
      : _formData = formData;

  @override
  final SignInMethod signInMethod;
  final Map<String, dynamic>? _formData;
  @override
  Map<String, dynamic>? get formData {
    final value = _formData;
    if (value == null) return null;
    if (_formData is EqualUnmodifiableMapView) return _formData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SignInEvent.signIn(signInMethod: $signInMethod, formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventSignInImpl &&
            (identical(other.signInMethod, signInMethod) ||
                other.signInMethod == signInMethod) &&
            const DeepCollectionEquality().equals(other._formData, _formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInMethod,
      const DeepCollectionEquality().hash(_formData));

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventSignInImplCopyWith<_$SignInEventSignInImpl> get copyWith =>
      __$$SignInEventSignInImplCopyWithImpl<_$SignInEventSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SignInMethod signInMethod, Map<String, dynamic>? formData)
        signIn,
    required TResult Function() leavePage,
  }) {
    return signIn(signInMethod, formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SignInMethod signInMethod, Map<String, dynamic>? formData)?
        signIn,
    TResult? Function()? leavePage,
  }) {
    return signIn?.call(signInMethod, formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInMethod signInMethod, Map<String, dynamic>? formData)?
        signIn,
    TResult Function()? leavePage,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(signInMethod, formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEventSignIn value) signIn,
    required TResult Function(SignInEventLeavePage value) leavePage,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEventSignIn value)? signIn,
    TResult? Function(SignInEventLeavePage value)? leavePage,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEventSignIn value)? signIn,
    TResult Function(SignInEventLeavePage value)? leavePage,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInEventSignIn implements SignInEvent {
  const factory SignInEventSignIn(final SignInMethod signInMethod,
      {final Map<String, dynamic>? formData}) = _$SignInEventSignInImpl;

  SignInMethod get signInMethod;
  Map<String, dynamic>? get formData;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInEventSignInImplCopyWith<_$SignInEventSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEventLeavePageImplCopyWith<$Res> {
  factory _$$SignInEventLeavePageImplCopyWith(_$SignInEventLeavePageImpl value,
          $Res Function(_$SignInEventLeavePageImpl) then) =
      __$$SignInEventLeavePageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInEventLeavePageImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInEventLeavePageImpl>
    implements _$$SignInEventLeavePageImplCopyWith<$Res> {
  __$$SignInEventLeavePageImplCopyWithImpl(_$SignInEventLeavePageImpl _value,
      $Res Function(_$SignInEventLeavePageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInEventLeavePageImpl implements SignInEventLeavePage {
  const _$SignInEventLeavePageImpl();

  @override
  String toString() {
    return 'SignInEvent.leavePage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventLeavePageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SignInMethod signInMethod, Map<String, dynamic>? formData)
        signIn,
    required TResult Function() leavePage,
  }) {
    return leavePage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SignInMethod signInMethod, Map<String, dynamic>? formData)?
        signIn,
    TResult? Function()? leavePage,
  }) {
    return leavePage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInMethod signInMethod, Map<String, dynamic>? formData)?
        signIn,
    TResult Function()? leavePage,
    required TResult orElse(),
  }) {
    if (leavePage != null) {
      return leavePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInEventSignIn value) signIn,
    required TResult Function(SignInEventLeavePage value) leavePage,
  }) {
    return leavePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInEventSignIn value)? signIn,
    TResult? Function(SignInEventLeavePage value)? leavePage,
  }) {
    return leavePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInEventSignIn value)? signIn,
    TResult Function(SignInEventLeavePage value)? leavePage,
    required TResult orElse(),
  }) {
    if (leavePage != null) {
      return leavePage(this);
    }
    return orElse();
  }
}

abstract class SignInEventLeavePage implements SignInEvent {
  const factory SignInEventLeavePage() = _$SignInEventLeavePageImpl;
}

/// @nodoc
mixin _$SignInSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoader value) showLoader,
    required TResult Function(_HideLoader value) hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoader value)? showLoader,
    TResult? Function(_HideLoader value)? hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoader value)? showLoader,
    TResult Function(_HideLoader value)? hideLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInSRCopyWith<$Res> {
  factory $SignInSRCopyWith(SignInSR value, $Res Function(SignInSR) then) =
      _$SignInSRCopyWithImpl<$Res, SignInSR>;
}

/// @nodoc
class _$SignInSRCopyWithImpl<$Res, $Val extends SignInSR>
    implements $SignInSRCopyWith<$Res> {
  _$SignInSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowLoaderImplCopyWith<$Res> {
  factory _$$ShowLoaderImplCopyWith(
          _$ShowLoaderImpl value, $Res Function(_$ShowLoaderImpl) then) =
      __$$ShowLoaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowLoaderImplCopyWithImpl<$Res>
    extends _$SignInSRCopyWithImpl<$Res, _$ShowLoaderImpl>
    implements _$$ShowLoaderImplCopyWith<$Res> {
  __$$ShowLoaderImplCopyWithImpl(
      _$ShowLoaderImpl _value, $Res Function(_$ShowLoaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowLoaderImpl implements _ShowLoader {
  const _$ShowLoaderImpl();

  @override
  String toString() {
    return 'SignInSR.showLoader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowLoaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) {
    return showLoader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) {
    return showLoader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) {
    if (showLoader != null) {
      return showLoader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoader value) showLoader,
    required TResult Function(_HideLoader value) hideLoader,
  }) {
    return showLoader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoader value)? showLoader,
    TResult? Function(_HideLoader value)? hideLoader,
  }) {
    return showLoader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoader value)? showLoader,
    TResult Function(_HideLoader value)? hideLoader,
    required TResult orElse(),
  }) {
    if (showLoader != null) {
      return showLoader(this);
    }
    return orElse();
  }
}

abstract class _ShowLoader implements SignInSR {
  const factory _ShowLoader() = _$ShowLoaderImpl;
}

/// @nodoc
abstract class _$$HideLoaderImplCopyWith<$Res> {
  factory _$$HideLoaderImplCopyWith(
          _$HideLoaderImpl value, $Res Function(_$HideLoaderImpl) then) =
      __$$HideLoaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideLoaderImplCopyWithImpl<$Res>
    extends _$SignInSRCopyWithImpl<$Res, _$HideLoaderImpl>
    implements _$$HideLoaderImplCopyWith<$Res> {
  __$$HideLoaderImplCopyWithImpl(
      _$HideLoaderImpl _value, $Res Function(_$HideLoaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideLoaderImpl implements _HideLoader {
  const _$HideLoaderImpl();

  @override
  String toString() {
    return 'SignInSR.hideLoader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideLoaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) {
    return hideLoader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) {
    return hideLoader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) {
    if (hideLoader != null) {
      return hideLoader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoader value) showLoader,
    required TResult Function(_HideLoader value) hideLoader,
  }) {
    return hideLoader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoader value)? showLoader,
    TResult? Function(_HideLoader value)? hideLoader,
  }) {
    return hideLoader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoader value)? showLoader,
    TResult Function(_HideLoader value)? hideLoader,
    required TResult orElse(),
  }) {
    if (hideLoader != null) {
      return hideLoader(this);
    }
    return orElse();
  }
}

abstract class _HideLoader implements SignInSR {
  const factory _HideLoader() = _$HideLoaderImpl;
}
