// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
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
    required TResult Function(SignUpStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpStateDataImplCopyWith<$Res> {
  factory _$$SignUpStateDataImplCopyWith(_$SignUpStateDataImpl value,
          $Res Function(_$SignUpStateDataImpl) then) =
      __$$SignUpStateDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateDataImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateDataImpl>
    implements _$$SignUpStateDataImplCopyWith<$Res> {
  __$$SignUpStateDataImplCopyWithImpl(
      _$SignUpStateDataImpl _value, $Res Function(_$SignUpStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpStateDataImpl extends SignUpStateData {
  const _$SignUpStateDataImpl() : super._();

  @override
  String toString() {
    return 'SignUpState.data()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateDataImpl);
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
    required TResult Function(SignUpStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SignUpStateData extends SignUpState {
  const factory SignUpStateData() = _$SignUpStateDataImpl;
  const SignUpStateData._() : super._();
}

/// @nodoc
mixin _$SignUpEvent {
  SignInMethod get signInMethod => throw _privateConstructorUsedError;
  Map<String, dynamic> get formData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SignInMethod signInMethod, Map<String, dynamic> formData)
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInMethod signInMethod, Map<String, dynamic> formData)?
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInMethod signInMethod, Map<String, dynamic> formData)?
        signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventSubmit value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventSubmit value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventSubmit value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpEventCopyWith<SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
  @useResult
  $Res call({SignInMethod signInMethod, Map<String, dynamic> formData});
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInMethod = null,
    Object? formData = null,
  }) {
    return _then(_value.copyWith(
      signInMethod: null == signInMethod
          ? _value.signInMethod
          : signInMethod // ignore: cast_nullable_to_non_nullable
              as SignInMethod,
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpEventSubmitImplCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$SignUpEventSubmitImplCopyWith(_$SignUpEventSubmitImpl value,
          $Res Function(_$SignUpEventSubmitImpl) then) =
      __$$SignUpEventSubmitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInMethod signInMethod, Map<String, dynamic> formData});
}

/// @nodoc
class __$$SignUpEventSubmitImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventSubmitImpl>
    implements _$$SignUpEventSubmitImplCopyWith<$Res> {
  __$$SignUpEventSubmitImplCopyWithImpl(_$SignUpEventSubmitImpl _value,
      $Res Function(_$SignUpEventSubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInMethod = null,
    Object? formData = null,
  }) {
    return _then(_$SignUpEventSubmitImpl(
      null == signInMethod
          ? _value.signInMethod
          : signInMethod // ignore: cast_nullable_to_non_nullable
              as SignInMethod,
      null == formData
          ? _value._formData
          : formData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$SignUpEventSubmitImpl implements SignUpEventSubmit {
  const _$SignUpEventSubmitImpl(
      this.signInMethod, final Map<String, dynamic> formData)
      : _formData = formData;

  @override
  final SignInMethod signInMethod;
  final Map<String, dynamic> _formData;
  @override
  Map<String, dynamic> get formData {
    if (_formData is EqualUnmodifiableMapView) return _formData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_formData);
  }

  @override
  String toString() {
    return 'SignUpEvent.signUp(signInMethod: $signInMethod, formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventSubmitImpl &&
            (identical(other.signInMethod, signInMethod) ||
                other.signInMethod == signInMethod) &&
            const DeepCollectionEquality().equals(other._formData, _formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInMethod,
      const DeepCollectionEquality().hash(_formData));

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventSubmitImplCopyWith<_$SignUpEventSubmitImpl> get copyWith =>
      __$$SignUpEventSubmitImplCopyWithImpl<_$SignUpEventSubmitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SignInMethod signInMethod, Map<String, dynamic> formData)
        signUp,
  }) {
    return signUp(signInMethod, formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInMethod signInMethod, Map<String, dynamic> formData)?
        signUp,
  }) {
    return signUp?.call(signInMethod, formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInMethod signInMethod, Map<String, dynamic> formData)?
        signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(signInMethod, formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventSubmit value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventSubmit value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventSubmit value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpEventSubmit implements SignUpEvent {
  const factory SignUpEventSubmit(final SignInMethod signInMethod,
      final Map<String, dynamic> formData) = _$SignUpEventSubmitImpl;

  @override
  SignInMethod get signInMethod;
  @override
  Map<String, dynamic> get formData;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpEventSubmitImplCopyWith<_$SignUpEventSubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpSR {
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
abstract class $SignUpSRCopyWith<$Res> {
  factory $SignUpSRCopyWith(SignUpSR value, $Res Function(SignUpSR) then) =
      _$SignUpSRCopyWithImpl<$Res, SignUpSR>;
}

/// @nodoc
class _$SignUpSRCopyWithImpl<$Res, $Val extends SignUpSR>
    implements $SignUpSRCopyWith<$Res> {
  _$SignUpSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpSR
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
    extends _$SignUpSRCopyWithImpl<$Res, _$ShowLoaderImpl>
    implements _$$ShowLoaderImplCopyWith<$Res> {
  __$$ShowLoaderImplCopyWithImpl(
      _$ShowLoaderImpl _value, $Res Function(_$ShowLoaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowLoaderImpl implements _ShowLoader {
  const _$ShowLoaderImpl();

  @override
  String toString() {
    return 'SignUpSR.showLoader()';
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

abstract class _ShowLoader implements SignUpSR {
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
    extends _$SignUpSRCopyWithImpl<$Res, _$HideLoaderImpl>
    implements _$$HideLoaderImplCopyWith<$Res> {
  __$$HideLoaderImplCopyWithImpl(
      _$HideLoaderImpl _value, $Res Function(_$HideLoaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideLoaderImpl implements _HideLoader {
  const _$HideLoaderImpl();

  @override
  String toString() {
    return 'SignUpSR.hideLoader()';
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

abstract class _HideLoader implements SignUpSR {
  const factory _HideLoader() = _$HideLoaderImpl;
}
