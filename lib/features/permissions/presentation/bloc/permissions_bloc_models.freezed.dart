// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permissions_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PermissionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionsStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionsStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionsStateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsStateCopyWith<$Res> {
  factory $PermissionsStateCopyWith(
          PermissionsState value, $Res Function(PermissionsState) then) =
      _$PermissionsStateCopyWithImpl<$Res, PermissionsState>;
}

/// @nodoc
class _$PermissionsStateCopyWithImpl<$Res, $Val extends PermissionsState>
    implements $PermissionsStateCopyWith<$Res> {
  _$PermissionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PermissionsStateEmptyImplCopyWith<$Res> {
  factory _$$PermissionsStateEmptyImplCopyWith(
          _$PermissionsStateEmptyImpl value,
          $Res Function(_$PermissionsStateEmptyImpl) then) =
      __$$PermissionsStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionsStateEmptyImplCopyWithImpl<$Res>
    extends _$PermissionsStateCopyWithImpl<$Res, _$PermissionsStateEmptyImpl>
    implements _$$PermissionsStateEmptyImplCopyWith<$Res> {
  __$$PermissionsStateEmptyImplCopyWithImpl(_$PermissionsStateEmptyImpl _value,
      $Res Function(_$PermissionsStateEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionsStateEmptyImpl implements PermissionsStateEmpty {
  const _$PermissionsStateEmptyImpl();

  @override
  String toString() {
    return 'PermissionsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionsStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionsStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionsStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PermissionsStateEmpty implements PermissionsState {
  const factory PermissionsStateEmpty() = _$PermissionsStateEmptyImpl;
}

/// @nodoc
mixin _$PermissionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkNotificationPermission,
    required TResult Function() setHasBeenRequested,
    required TResult Function() requestNotificationPermission,
    required TResult Function() openSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkNotificationPermission,
    TResult? Function()? setHasBeenRequested,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? openSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkNotificationPermission,
    TResult Function()? setHasBeenRequested,
    TResult Function()? requestNotificationPermission,
    TResult Function()? openSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionsEventCheckNotification value)
        checkNotificationPermission,
    required TResult Function(PermissionsEventSetHasBeenRequested value)
        setHasBeenRequested,
    required TResult Function(PermissionsEventRequestNotification value)
        requestNotificationPermission,
    required TResult Function(PermissionsEventOpenSettings value) openSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult? Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult? Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult? Function(PermissionsEventOpenSettings value)? openSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult Function(PermissionsEventOpenSettings value)? openSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsEventCopyWith<$Res> {
  factory $PermissionsEventCopyWith(
          PermissionsEvent value, $Res Function(PermissionsEvent) then) =
      _$PermissionsEventCopyWithImpl<$Res, PermissionsEvent>;
}

/// @nodoc
class _$PermissionsEventCopyWithImpl<$Res, $Val extends PermissionsEvent>
    implements $PermissionsEventCopyWith<$Res> {
  _$PermissionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PermissionsEventCheckNotificationImplCopyWith<$Res> {
  factory _$$PermissionsEventCheckNotificationImplCopyWith(
          _$PermissionsEventCheckNotificationImpl value,
          $Res Function(_$PermissionsEventCheckNotificationImpl) then) =
      __$$PermissionsEventCheckNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionsEventCheckNotificationImplCopyWithImpl<$Res>
    extends _$PermissionsEventCopyWithImpl<$Res,
        _$PermissionsEventCheckNotificationImpl>
    implements _$$PermissionsEventCheckNotificationImplCopyWith<$Res> {
  __$$PermissionsEventCheckNotificationImplCopyWithImpl(
      _$PermissionsEventCheckNotificationImpl _value,
      $Res Function(_$PermissionsEventCheckNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionsEventCheckNotificationImpl
    implements PermissionsEventCheckNotification {
  const _$PermissionsEventCheckNotificationImpl();

  @override
  String toString() {
    return 'PermissionsEvent.checkNotificationPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsEventCheckNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkNotificationPermission,
    required TResult Function() setHasBeenRequested,
    required TResult Function() requestNotificationPermission,
    required TResult Function() openSettings,
  }) {
    return checkNotificationPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkNotificationPermission,
    TResult? Function()? setHasBeenRequested,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? openSettings,
  }) {
    return checkNotificationPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkNotificationPermission,
    TResult Function()? setHasBeenRequested,
    TResult Function()? requestNotificationPermission,
    TResult Function()? openSettings,
    required TResult orElse(),
  }) {
    if (checkNotificationPermission != null) {
      return checkNotificationPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionsEventCheckNotification value)
        checkNotificationPermission,
    required TResult Function(PermissionsEventSetHasBeenRequested value)
        setHasBeenRequested,
    required TResult Function(PermissionsEventRequestNotification value)
        requestNotificationPermission,
    required TResult Function(PermissionsEventOpenSettings value) openSettings,
  }) {
    return checkNotificationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult? Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult? Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult? Function(PermissionsEventOpenSettings value)? openSettings,
  }) {
    return checkNotificationPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult Function(PermissionsEventOpenSettings value)? openSettings,
    required TResult orElse(),
  }) {
    if (checkNotificationPermission != null) {
      return checkNotificationPermission(this);
    }
    return orElse();
  }
}

abstract class PermissionsEventCheckNotification implements PermissionsEvent {
  const factory PermissionsEventCheckNotification() =
      _$PermissionsEventCheckNotificationImpl;
}

/// @nodoc
abstract class _$$PermissionsEventSetHasBeenRequestedImplCopyWith<$Res> {
  factory _$$PermissionsEventSetHasBeenRequestedImplCopyWith(
          _$PermissionsEventSetHasBeenRequestedImpl value,
          $Res Function(_$PermissionsEventSetHasBeenRequestedImpl) then) =
      __$$PermissionsEventSetHasBeenRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionsEventSetHasBeenRequestedImplCopyWithImpl<$Res>
    extends _$PermissionsEventCopyWithImpl<$Res,
        _$PermissionsEventSetHasBeenRequestedImpl>
    implements _$$PermissionsEventSetHasBeenRequestedImplCopyWith<$Res> {
  __$$PermissionsEventSetHasBeenRequestedImplCopyWithImpl(
      _$PermissionsEventSetHasBeenRequestedImpl _value,
      $Res Function(_$PermissionsEventSetHasBeenRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionsEventSetHasBeenRequestedImpl
    implements PermissionsEventSetHasBeenRequested {
  const _$PermissionsEventSetHasBeenRequestedImpl();

  @override
  String toString() {
    return 'PermissionsEvent.setHasBeenRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsEventSetHasBeenRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkNotificationPermission,
    required TResult Function() setHasBeenRequested,
    required TResult Function() requestNotificationPermission,
    required TResult Function() openSettings,
  }) {
    return setHasBeenRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkNotificationPermission,
    TResult? Function()? setHasBeenRequested,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? openSettings,
  }) {
    return setHasBeenRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkNotificationPermission,
    TResult Function()? setHasBeenRequested,
    TResult Function()? requestNotificationPermission,
    TResult Function()? openSettings,
    required TResult orElse(),
  }) {
    if (setHasBeenRequested != null) {
      return setHasBeenRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionsEventCheckNotification value)
        checkNotificationPermission,
    required TResult Function(PermissionsEventSetHasBeenRequested value)
        setHasBeenRequested,
    required TResult Function(PermissionsEventRequestNotification value)
        requestNotificationPermission,
    required TResult Function(PermissionsEventOpenSettings value) openSettings,
  }) {
    return setHasBeenRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult? Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult? Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult? Function(PermissionsEventOpenSettings value)? openSettings,
  }) {
    return setHasBeenRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult Function(PermissionsEventOpenSettings value)? openSettings,
    required TResult orElse(),
  }) {
    if (setHasBeenRequested != null) {
      return setHasBeenRequested(this);
    }
    return orElse();
  }
}

abstract class PermissionsEventSetHasBeenRequested implements PermissionsEvent {
  const factory PermissionsEventSetHasBeenRequested() =
      _$PermissionsEventSetHasBeenRequestedImpl;
}

/// @nodoc
abstract class _$$PermissionsEventRequestNotificationImplCopyWith<$Res> {
  factory _$$PermissionsEventRequestNotificationImplCopyWith(
          _$PermissionsEventRequestNotificationImpl value,
          $Res Function(_$PermissionsEventRequestNotificationImpl) then) =
      __$$PermissionsEventRequestNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionsEventRequestNotificationImplCopyWithImpl<$Res>
    extends _$PermissionsEventCopyWithImpl<$Res,
        _$PermissionsEventRequestNotificationImpl>
    implements _$$PermissionsEventRequestNotificationImplCopyWith<$Res> {
  __$$PermissionsEventRequestNotificationImplCopyWithImpl(
      _$PermissionsEventRequestNotificationImpl _value,
      $Res Function(_$PermissionsEventRequestNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionsEventRequestNotificationImpl
    implements PermissionsEventRequestNotification {
  const _$PermissionsEventRequestNotificationImpl();

  @override
  String toString() {
    return 'PermissionsEvent.requestNotificationPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsEventRequestNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkNotificationPermission,
    required TResult Function() setHasBeenRequested,
    required TResult Function() requestNotificationPermission,
    required TResult Function() openSettings,
  }) {
    return requestNotificationPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkNotificationPermission,
    TResult? Function()? setHasBeenRequested,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? openSettings,
  }) {
    return requestNotificationPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkNotificationPermission,
    TResult Function()? setHasBeenRequested,
    TResult Function()? requestNotificationPermission,
    TResult Function()? openSettings,
    required TResult orElse(),
  }) {
    if (requestNotificationPermission != null) {
      return requestNotificationPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionsEventCheckNotification value)
        checkNotificationPermission,
    required TResult Function(PermissionsEventSetHasBeenRequested value)
        setHasBeenRequested,
    required TResult Function(PermissionsEventRequestNotification value)
        requestNotificationPermission,
    required TResult Function(PermissionsEventOpenSettings value) openSettings,
  }) {
    return requestNotificationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult? Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult? Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult? Function(PermissionsEventOpenSettings value)? openSettings,
  }) {
    return requestNotificationPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult Function(PermissionsEventOpenSettings value)? openSettings,
    required TResult orElse(),
  }) {
    if (requestNotificationPermission != null) {
      return requestNotificationPermission(this);
    }
    return orElse();
  }
}

abstract class PermissionsEventRequestNotification implements PermissionsEvent {
  const factory PermissionsEventRequestNotification() =
      _$PermissionsEventRequestNotificationImpl;
}

/// @nodoc
abstract class _$$PermissionsEventOpenSettingsImplCopyWith<$Res> {
  factory _$$PermissionsEventOpenSettingsImplCopyWith(
          _$PermissionsEventOpenSettingsImpl value,
          $Res Function(_$PermissionsEventOpenSettingsImpl) then) =
      __$$PermissionsEventOpenSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionsEventOpenSettingsImplCopyWithImpl<$Res>
    extends _$PermissionsEventCopyWithImpl<$Res,
        _$PermissionsEventOpenSettingsImpl>
    implements _$$PermissionsEventOpenSettingsImplCopyWith<$Res> {
  __$$PermissionsEventOpenSettingsImplCopyWithImpl(
      _$PermissionsEventOpenSettingsImpl _value,
      $Res Function(_$PermissionsEventOpenSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionsEventOpenSettingsImpl
    implements PermissionsEventOpenSettings {
  const _$PermissionsEventOpenSettingsImpl();

  @override
  String toString() {
    return 'PermissionsEvent.openSettings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsEventOpenSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkNotificationPermission,
    required TResult Function() setHasBeenRequested,
    required TResult Function() requestNotificationPermission,
    required TResult Function() openSettings,
  }) {
    return openSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkNotificationPermission,
    TResult? Function()? setHasBeenRequested,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? openSettings,
  }) {
    return openSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkNotificationPermission,
    TResult Function()? setHasBeenRequested,
    TResult Function()? requestNotificationPermission,
    TResult Function()? openSettings,
    required TResult orElse(),
  }) {
    if (openSettings != null) {
      return openSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionsEventCheckNotification value)
        checkNotificationPermission,
    required TResult Function(PermissionsEventSetHasBeenRequested value)
        setHasBeenRequested,
    required TResult Function(PermissionsEventRequestNotification value)
        requestNotificationPermission,
    required TResult Function(PermissionsEventOpenSettings value) openSettings,
  }) {
    return openSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult? Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult? Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult? Function(PermissionsEventOpenSettings value)? openSettings,
  }) {
    return openSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionsEventCheckNotification value)?
        checkNotificationPermission,
    TResult Function(PermissionsEventSetHasBeenRequested value)?
        setHasBeenRequested,
    TResult Function(PermissionsEventRequestNotification value)?
        requestNotificationPermission,
    TResult Function(PermissionsEventOpenSettings value)? openSettings,
    required TResult orElse(),
  }) {
    if (openSettings != null) {
      return openSettings(this);
    }
    return orElse();
  }
}

abstract class PermissionsEventOpenSettings implements PermissionsEvent {
  const factory PermissionsEventOpenSettings() =
      _$PermissionsEventOpenSettingsImpl;
}

/// @nodoc
mixin _$PermissionsSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showOpenSettingsDialog,
    required TResult Function() hasBeenRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showOpenSettingsDialog,
    TResult? Function()? hasBeenRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showOpenSettingsDialog,
    TResult Function()? hasBeenRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowOpenSettingsDialog value)
        showOpenSettingsDialog,
    required TResult Function(_HasBeenRequested value) hasBeenRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowOpenSettingsDialog value)? showOpenSettingsDialog,
    TResult? Function(_HasBeenRequested value)? hasBeenRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowOpenSettingsDialog value)? showOpenSettingsDialog,
    TResult Function(_HasBeenRequested value)? hasBeenRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsSRCopyWith<$Res> {
  factory $PermissionsSRCopyWith(
          PermissionsSR value, $Res Function(PermissionsSR) then) =
      _$PermissionsSRCopyWithImpl<$Res, PermissionsSR>;
}

/// @nodoc
class _$PermissionsSRCopyWithImpl<$Res, $Val extends PermissionsSR>
    implements $PermissionsSRCopyWith<$Res> {
  _$PermissionsSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionsSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowOpenSettingsDialogImplCopyWith<$Res> {
  factory _$$ShowOpenSettingsDialogImplCopyWith(
          _$ShowOpenSettingsDialogImpl value,
          $Res Function(_$ShowOpenSettingsDialogImpl) then) =
      __$$ShowOpenSettingsDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowOpenSettingsDialogImplCopyWithImpl<$Res>
    extends _$PermissionsSRCopyWithImpl<$Res, _$ShowOpenSettingsDialogImpl>
    implements _$$ShowOpenSettingsDialogImplCopyWith<$Res> {
  __$$ShowOpenSettingsDialogImplCopyWithImpl(
      _$ShowOpenSettingsDialogImpl _value,
      $Res Function(_$ShowOpenSettingsDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionsSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowOpenSettingsDialogImpl implements _ShowOpenSettingsDialog {
  const _$ShowOpenSettingsDialogImpl();

  @override
  String toString() {
    return 'PermissionsSR.showOpenSettingsDialog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowOpenSettingsDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showOpenSettingsDialog,
    required TResult Function() hasBeenRequested,
  }) {
    return showOpenSettingsDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showOpenSettingsDialog,
    TResult? Function()? hasBeenRequested,
  }) {
    return showOpenSettingsDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showOpenSettingsDialog,
    TResult Function()? hasBeenRequested,
    required TResult orElse(),
  }) {
    if (showOpenSettingsDialog != null) {
      return showOpenSettingsDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowOpenSettingsDialog value)
        showOpenSettingsDialog,
    required TResult Function(_HasBeenRequested value) hasBeenRequested,
  }) {
    return showOpenSettingsDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowOpenSettingsDialog value)? showOpenSettingsDialog,
    TResult? Function(_HasBeenRequested value)? hasBeenRequested,
  }) {
    return showOpenSettingsDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowOpenSettingsDialog value)? showOpenSettingsDialog,
    TResult Function(_HasBeenRequested value)? hasBeenRequested,
    required TResult orElse(),
  }) {
    if (showOpenSettingsDialog != null) {
      return showOpenSettingsDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowOpenSettingsDialog implements PermissionsSR {
  const factory _ShowOpenSettingsDialog() = _$ShowOpenSettingsDialogImpl;
}

/// @nodoc
abstract class _$$HasBeenRequestedImplCopyWith<$Res> {
  factory _$$HasBeenRequestedImplCopyWith(_$HasBeenRequestedImpl value,
          $Res Function(_$HasBeenRequestedImpl) then) =
      __$$HasBeenRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HasBeenRequestedImplCopyWithImpl<$Res>
    extends _$PermissionsSRCopyWithImpl<$Res, _$HasBeenRequestedImpl>
    implements _$$HasBeenRequestedImplCopyWith<$Res> {
  __$$HasBeenRequestedImplCopyWithImpl(_$HasBeenRequestedImpl _value,
      $Res Function(_$HasBeenRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionsSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HasBeenRequestedImpl implements _HasBeenRequested {
  const _$HasBeenRequestedImpl();

  @override
  String toString() {
    return 'PermissionsSR.hasBeenRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HasBeenRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showOpenSettingsDialog,
    required TResult Function() hasBeenRequested,
  }) {
    return hasBeenRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showOpenSettingsDialog,
    TResult? Function()? hasBeenRequested,
  }) {
    return hasBeenRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showOpenSettingsDialog,
    TResult Function()? hasBeenRequested,
    required TResult orElse(),
  }) {
    if (hasBeenRequested != null) {
      return hasBeenRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowOpenSettingsDialog value)
        showOpenSettingsDialog,
    required TResult Function(_HasBeenRequested value) hasBeenRequested,
  }) {
    return hasBeenRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowOpenSettingsDialog value)? showOpenSettingsDialog,
    TResult? Function(_HasBeenRequested value)? hasBeenRequested,
  }) {
    return hasBeenRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowOpenSettingsDialog value)? showOpenSettingsDialog,
    TResult Function(_HasBeenRequested value)? hasBeenRequested,
    required TResult orElse(),
  }) {
    if (hasBeenRequested != null) {
      return hasBeenRequested(this);
    }
    return orElse();
  }
}

abstract class _HasBeenRequested implements PermissionsSR {
  const factory _HasBeenRequested() = _$HasBeenRequestedImpl;
}
