// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PermissionRequest {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Permission permission) general,
    required TResult Function(
            NotificationsPermissionRequest? notificationRequest)
        notifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Permission permission)? general,
    TResult? Function(NotificationsPermissionRequest? notificationRequest)?
        notifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Permission permission)? general,
    TResult Function(NotificationsPermissionRequest? notificationRequest)?
        notifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralPermissionRequest value) general,
    required TResult Function(NotificationPermissionRequest value)
        notifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralPermissionRequest value)? general,
    TResult? Function(NotificationPermissionRequest value)? notifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralPermissionRequest value)? general,
    TResult Function(NotificationPermissionRequest value)? notifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionRequestCopyWith<$Res> {
  factory $PermissionRequestCopyWith(
          PermissionRequest value, $Res Function(PermissionRequest) then) =
      _$PermissionRequestCopyWithImpl<$Res, PermissionRequest>;
}

/// @nodoc
class _$PermissionRequestCopyWithImpl<$Res, $Val extends PermissionRequest>
    implements $PermissionRequestCopyWith<$Res> {
  _$PermissionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GeneralPermissionRequestImplCopyWith<$Res> {
  factory _$$GeneralPermissionRequestImplCopyWith(
          _$GeneralPermissionRequestImpl value,
          $Res Function(_$GeneralPermissionRequestImpl) then) =
      __$$GeneralPermissionRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Permission permission});
}

/// @nodoc
class __$$GeneralPermissionRequestImplCopyWithImpl<$Res>
    extends _$PermissionRequestCopyWithImpl<$Res,
        _$GeneralPermissionRequestImpl>
    implements _$$GeneralPermissionRequestImplCopyWith<$Res> {
  __$$GeneralPermissionRequestImplCopyWithImpl(
      _$GeneralPermissionRequestImpl _value,
      $Res Function(_$GeneralPermissionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permission = null,
  }) {
    return _then(_$GeneralPermissionRequestImpl(
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as Permission,
    ));
  }
}

/// @nodoc

class _$GeneralPermissionRequestImpl implements GeneralPermissionRequest {
  const _$GeneralPermissionRequestImpl({required this.permission});

  @override
  final Permission permission;

  @override
  String toString() {
    return 'PermissionRequest.general(permission: $permission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralPermissionRequestImpl &&
            (identical(other.permission, permission) ||
                other.permission == permission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, permission);

  /// Create a copy of PermissionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralPermissionRequestImplCopyWith<_$GeneralPermissionRequestImpl>
      get copyWith => __$$GeneralPermissionRequestImplCopyWithImpl<
          _$GeneralPermissionRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Permission permission) general,
    required TResult Function(
            NotificationsPermissionRequest? notificationRequest)
        notifications,
  }) {
    return general(permission);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Permission permission)? general,
    TResult? Function(NotificationsPermissionRequest? notificationRequest)?
        notifications,
  }) {
    return general?.call(permission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Permission permission)? general,
    TResult Function(NotificationsPermissionRequest? notificationRequest)?
        notifications,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(permission);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralPermissionRequest value) general,
    required TResult Function(NotificationPermissionRequest value)
        notifications,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralPermissionRequest value)? general,
    TResult? Function(NotificationPermissionRequest value)? notifications,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralPermissionRequest value)? general,
    TResult Function(NotificationPermissionRequest value)? notifications,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class GeneralPermissionRequest implements PermissionRequest {
  const factory GeneralPermissionRequest(
      {required final Permission permission}) = _$GeneralPermissionRequestImpl;

  Permission get permission;

  /// Create a copy of PermissionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneralPermissionRequestImplCopyWith<_$GeneralPermissionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationPermissionRequestImplCopyWith<$Res> {
  factory _$$NotificationPermissionRequestImplCopyWith(
          _$NotificationPermissionRequestImpl value,
          $Res Function(_$NotificationPermissionRequestImpl) then) =
      __$$NotificationPermissionRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationsPermissionRequest? notificationRequest});

  $NotificationsPermissionRequestCopyWith<$Res>? get notificationRequest;
}

/// @nodoc
class __$$NotificationPermissionRequestImplCopyWithImpl<$Res>
    extends _$PermissionRequestCopyWithImpl<$Res,
        _$NotificationPermissionRequestImpl>
    implements _$$NotificationPermissionRequestImplCopyWith<$Res> {
  __$$NotificationPermissionRequestImplCopyWithImpl(
      _$NotificationPermissionRequestImpl _value,
      $Res Function(_$NotificationPermissionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationRequest = freezed,
  }) {
    return _then(_$NotificationPermissionRequestImpl(
      notificationRequest: freezed == notificationRequest
          ? _value.notificationRequest
          : notificationRequest // ignore: cast_nullable_to_non_nullable
              as NotificationsPermissionRequest?,
    ));
  }

  /// Create a copy of PermissionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationsPermissionRequestCopyWith<$Res>? get notificationRequest {
    if (_value.notificationRequest == null) {
      return null;
    }

    return $NotificationsPermissionRequestCopyWith<$Res>(
        _value.notificationRequest!, (value) {
      return _then(_value.copyWith(notificationRequest: value));
    });
  }
}

/// @nodoc

class _$NotificationPermissionRequestImpl
    implements NotificationPermissionRequest {
  const _$NotificationPermissionRequestImpl({this.notificationRequest});

  @override
  final NotificationsPermissionRequest? notificationRequest;

  @override
  String toString() {
    return 'PermissionRequest.notifications(notificationRequest: $notificationRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPermissionRequestImpl &&
            (identical(other.notificationRequest, notificationRequest) ||
                other.notificationRequest == notificationRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationRequest);

  /// Create a copy of PermissionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPermissionRequestImplCopyWith<
          _$NotificationPermissionRequestImpl>
      get copyWith => __$$NotificationPermissionRequestImplCopyWithImpl<
          _$NotificationPermissionRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Permission permission) general,
    required TResult Function(
            NotificationsPermissionRequest? notificationRequest)
        notifications,
  }) {
    return notifications(notificationRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Permission permission)? general,
    TResult? Function(NotificationsPermissionRequest? notificationRequest)?
        notifications,
  }) {
    return notifications?.call(notificationRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Permission permission)? general,
    TResult Function(NotificationsPermissionRequest? notificationRequest)?
        notifications,
    required TResult orElse(),
  }) {
    if (notifications != null) {
      return notifications(notificationRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralPermissionRequest value) general,
    required TResult Function(NotificationPermissionRequest value)
        notifications,
  }) {
    return notifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralPermissionRequest value)? general,
    TResult? Function(NotificationPermissionRequest value)? notifications,
  }) {
    return notifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralPermissionRequest value)? general,
    TResult Function(NotificationPermissionRequest value)? notifications,
    required TResult orElse(),
  }) {
    if (notifications != null) {
      return notifications(this);
    }
    return orElse();
  }
}

abstract class NotificationPermissionRequest implements PermissionRequest {
  const factory NotificationPermissionRequest(
          {final NotificationsPermissionRequest? notificationRequest}) =
      _$NotificationPermissionRequestImpl;

  NotificationsPermissionRequest? get notificationRequest;

  /// Create a copy of PermissionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPermissionRequestImplCopyWith<
          _$NotificationPermissionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
