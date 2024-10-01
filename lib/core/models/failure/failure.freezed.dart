// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) firebaAuthFailure,
    required TResult Function(String message) unknownFailure,
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function(String message) keyValueStoreFailure,
    required TResult Function(String message) permissionFailure,
    required TResult Function(String message) requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? firebaAuthFailure,
    TResult? Function(String message)? unknownFailure,
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function(String message)? keyValueStoreFailure,
    TResult? Function(String message)? permissionFailure,
    TResult? Function(String message)? requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? firebaAuthFailure,
    TResult Function(String message)? unknownFailure,
    TResult Function(String message)? connectionFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function(String message)? keyValueStoreFailure,
    TResult Function(String message)? permissionFailure,
    TResult Function(String message)? requestCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FirebaseAuthFailure value) firebaAuthFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(DatabaseFailure value) databaseFailure,
    required TResult Function(KeyValueStoreFailure value) keyValueStoreFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(RequestCancelledFailure value) requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(DatabaseFailure value)? databaseFailure,
    TResult? Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(RequestCancelledFailure value)? requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(DatabaseFailure value)? databaseFailure,
    TResult Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(RequestCancelledFailure value)? requestCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) firebaAuthFailure,
    required TResult Function(String message) unknownFailure,
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function(String message) keyValueStoreFailure,
    required TResult Function(String message) permissionFailure,
    required TResult Function(String message) requestCancelled,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? firebaAuthFailure,
    TResult? Function(String message)? unknownFailure,
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function(String message)? keyValueStoreFailure,
    TResult? Function(String message)? permissionFailure,
    TResult? Function(String message)? requestCancelled,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? firebaAuthFailure,
    TResult Function(String message)? unknownFailure,
    TResult Function(String message)? connectionFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function(String message)? keyValueStoreFailure,
    TResult Function(String message)? permissionFailure,
    TResult Function(String message)? requestCancelled,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FirebaseAuthFailure value) firebaAuthFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(DatabaseFailure value) databaseFailure,
    required TResult Function(KeyValueStoreFailure value) keyValueStoreFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(RequestCancelledFailure value) requestCancelled,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(DatabaseFailure value)? databaseFailure,
    TResult? Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(RequestCancelledFailure value)? requestCancelled,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(DatabaseFailure value)? databaseFailure,
    TResult Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(RequestCancelledFailure value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure(final String message) = _$ServerFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirebaseAuthFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FirebaseAuthFailureImplCopyWith(_$FirebaseAuthFailureImpl value,
          $Res Function(_$FirebaseAuthFailureImpl) then) =
      __$$FirebaseAuthFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FirebaseAuthFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FirebaseAuthFailureImpl>
    implements _$$FirebaseAuthFailureImplCopyWith<$Res> {
  __$$FirebaseAuthFailureImplCopyWithImpl(_$FirebaseAuthFailureImpl _value,
      $Res Function(_$FirebaseAuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FirebaseAuthFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirebaseAuthFailureImpl implements FirebaseAuthFailure {
  const _$FirebaseAuthFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.firebaAuthFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseAuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseAuthFailureImplCopyWith<_$FirebaseAuthFailureImpl> get copyWith =>
      __$$FirebaseAuthFailureImplCopyWithImpl<_$FirebaseAuthFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) firebaAuthFailure,
    required TResult Function(String message) unknownFailure,
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function(String message) keyValueStoreFailure,
    required TResult Function(String message) permissionFailure,
    required TResult Function(String message) requestCancelled,
  }) {
    return firebaAuthFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? firebaAuthFailure,
    TResult? Function(String message)? unknownFailure,
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function(String message)? keyValueStoreFailure,
    TResult? Function(String message)? permissionFailure,
    TResult? Function(String message)? requestCancelled,
  }) {
    return firebaAuthFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? firebaAuthFailure,
    TResult Function(String message)? unknownFailure,
    TResult Function(String message)? connectionFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function(String message)? keyValueStoreFailure,
    TResult Function(String message)? permissionFailure,
    TResult Function(String message)? requestCancelled,
    required TResult orElse(),
  }) {
    if (firebaAuthFailure != null) {
      return firebaAuthFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FirebaseAuthFailure value) firebaAuthFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(DatabaseFailure value) databaseFailure,
    required TResult Function(KeyValueStoreFailure value) keyValueStoreFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(RequestCancelledFailure value) requestCancelled,
  }) {
    return firebaAuthFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(DatabaseFailure value)? databaseFailure,
    TResult? Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(RequestCancelledFailure value)? requestCancelled,
  }) {
    return firebaAuthFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(DatabaseFailure value)? databaseFailure,
    TResult Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(RequestCancelledFailure value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (firebaAuthFailure != null) {
      return firebaAuthFailure(this);
    }
    return orElse();
  }
}

abstract class FirebaseAuthFailure implements Failure {
  const factory FirebaseAuthFailure(final String message) =
      _$FirebaseAuthFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseAuthFailureImplCopyWith<_$FirebaseAuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  const _$UnknownFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unknownFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) firebaAuthFailure,
    required TResult Function(String message) unknownFailure,
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function(String message) keyValueStoreFailure,
    required TResult Function(String message) permissionFailure,
    required TResult Function(String message) requestCancelled,
  }) {
    return unknownFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? firebaAuthFailure,
    TResult? Function(String message)? unknownFailure,
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function(String message)? keyValueStoreFailure,
    TResult? Function(String message)? permissionFailure,
    TResult? Function(String message)? requestCancelled,
  }) {
    return unknownFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? firebaAuthFailure,
    TResult Function(String message)? unknownFailure,
    TResult Function(String message)? connectionFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function(String message)? keyValueStoreFailure,
    TResult Function(String message)? permissionFailure,
    TResult Function(String message)? requestCancelled,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FirebaseAuthFailure value) firebaAuthFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(DatabaseFailure value) databaseFailure,
    required TResult Function(KeyValueStoreFailure value) keyValueStoreFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(RequestCancelledFailure value) requestCancelled,
  }) {
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(DatabaseFailure value)? databaseFailure,
    TResult? Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(RequestCancelledFailure value)? requestCancelled,
  }) {
    return unknownFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(DatabaseFailure value)? databaseFailure,
    TResult Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(RequestCancelledFailure value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure(final String message) = _$UnknownFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConnectionFailureImplCopyWith(_$ConnectionFailureImpl value,
          $Res Function(_$ConnectionFailureImpl) then) =
      __$$ConnectionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionFailureImpl>
    implements _$$ConnectionFailureImplCopyWith<$Res> {
  __$$ConnectionFailureImplCopyWithImpl(_$ConnectionFailureImpl _value,
      $Res Function(_$ConnectionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionFailureImpl implements ConnectionFailure {
  const _$ConnectionFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.connectionFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      __$$ConnectionFailureImplCopyWithImpl<_$ConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) firebaAuthFailure,
    required TResult Function(String message) unknownFailure,
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function(String message) keyValueStoreFailure,
    required TResult Function(String message) permissionFailure,
    required TResult Function(String message) requestCancelled,
  }) {
    return connectionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? firebaAuthFailure,
    TResult? Function(String message)? unknownFailure,
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function(String message)? keyValueStoreFailure,
    TResult? Function(String message)? permissionFailure,
    TResult? Function(String message)? requestCancelled,
  }) {
    return connectionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? firebaAuthFailure,
    TResult Function(String message)? unknownFailure,
    TResult Function(String message)? connectionFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function(String message)? keyValueStoreFailure,
    TResult Function(String message)? permissionFailure,
    TResult Function(String message)? requestCancelled,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FirebaseAuthFailure value) firebaAuthFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(DatabaseFailure value) databaseFailure,
    required TResult Function(KeyValueStoreFailure value) keyValueStoreFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(RequestCancelledFailure value) requestCancelled,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(DatabaseFailure value)? databaseFailure,
    TResult? Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(RequestCancelledFailure value)? requestCancelled,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(DatabaseFailure value)? databaseFailure,
    TResult Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(RequestCancelledFailure value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure implements Failure {
  const factory ConnectionFailure(final String message) =
      _$ConnectionFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$DatabaseFailureImplCopyWith(_$DatabaseFailureImpl value,
          $Res Function(_$DatabaseFailureImpl) then) =
      __$$DatabaseFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DatabaseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DatabaseFailureImpl>
    implements _$$DatabaseFailureImplCopyWith<$Res> {
  __$$DatabaseFailureImplCopyWithImpl(
      _$DatabaseFailureImpl _value, $Res Function(_$DatabaseFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DatabaseFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DatabaseFailureImpl implements DatabaseFailure {
  const _$DatabaseFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.databaseFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      __$$DatabaseFailureImplCopyWithImpl<_$DatabaseFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) firebaAuthFailure,
    required TResult Function(String message) unknownFailure,
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function(String message) keyValueStoreFailure,
    required TResult Function(String message) permissionFailure,
    required TResult Function(String message) requestCancelled,
  }) {
    return databaseFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? firebaAuthFailure,
    TResult? Function(String message)? unknownFailure,
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function(String message)? keyValueStoreFailure,
    TResult? Function(String message)? permissionFailure,
    TResult? Function(String message)? requestCancelled,
  }) {
    return databaseFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? firebaAuthFailure,
    TResult Function(String message)? unknownFailure,
    TResult Function(String message)? connectionFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function(String message)? keyValueStoreFailure,
    TResult Function(String message)? permissionFailure,
    TResult Function(String message)? requestCancelled,
    required TResult orElse(),
  }) {
    if (databaseFailure != null) {
      return databaseFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FirebaseAuthFailure value) firebaAuthFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(DatabaseFailure value) databaseFailure,
    required TResult Function(KeyValueStoreFailure value) keyValueStoreFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(RequestCancelledFailure value) requestCancelled,
  }) {
    return databaseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(DatabaseFailure value)? databaseFailure,
    TResult? Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(RequestCancelledFailure value)? requestCancelled,
  }) {
    return databaseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(DatabaseFailure value)? databaseFailure,
    TResult Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(RequestCancelledFailure value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (databaseFailure != null) {
      return databaseFailure(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailure implements Failure {
  const factory DatabaseFailure(final String message) = _$DatabaseFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KeyValueStoreFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$KeyValueStoreFailureImplCopyWith(_$KeyValueStoreFailureImpl value,
          $Res Function(_$KeyValueStoreFailureImpl) then) =
      __$$KeyValueStoreFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$KeyValueStoreFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$KeyValueStoreFailureImpl>
    implements _$$KeyValueStoreFailureImplCopyWith<$Res> {
  __$$KeyValueStoreFailureImplCopyWithImpl(_$KeyValueStoreFailureImpl _value,
      $Res Function(_$KeyValueStoreFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$KeyValueStoreFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KeyValueStoreFailureImpl implements KeyValueStoreFailure {
  const _$KeyValueStoreFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.keyValueStoreFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyValueStoreFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyValueStoreFailureImplCopyWith<_$KeyValueStoreFailureImpl>
      get copyWith =>
          __$$KeyValueStoreFailureImplCopyWithImpl<_$KeyValueStoreFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) firebaAuthFailure,
    required TResult Function(String message) unknownFailure,
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function(String message) keyValueStoreFailure,
    required TResult Function(String message) permissionFailure,
    required TResult Function(String message) requestCancelled,
  }) {
    return keyValueStoreFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? firebaAuthFailure,
    TResult? Function(String message)? unknownFailure,
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function(String message)? keyValueStoreFailure,
    TResult? Function(String message)? permissionFailure,
    TResult? Function(String message)? requestCancelled,
  }) {
    return keyValueStoreFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? firebaAuthFailure,
    TResult Function(String message)? unknownFailure,
    TResult Function(String message)? connectionFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function(String message)? keyValueStoreFailure,
    TResult Function(String message)? permissionFailure,
    TResult Function(String message)? requestCancelled,
    required TResult orElse(),
  }) {
    if (keyValueStoreFailure != null) {
      return keyValueStoreFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FirebaseAuthFailure value) firebaAuthFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(DatabaseFailure value) databaseFailure,
    required TResult Function(KeyValueStoreFailure value) keyValueStoreFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(RequestCancelledFailure value) requestCancelled,
  }) {
    return keyValueStoreFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(DatabaseFailure value)? databaseFailure,
    TResult? Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(RequestCancelledFailure value)? requestCancelled,
  }) {
    return keyValueStoreFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(DatabaseFailure value)? databaseFailure,
    TResult Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(RequestCancelledFailure value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (keyValueStoreFailure != null) {
      return keyValueStoreFailure(this);
    }
    return orElse();
  }
}

abstract class KeyValueStoreFailure implements Failure {
  const factory KeyValueStoreFailure(final String message) =
      _$KeyValueStoreFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyValueStoreFailureImplCopyWith<_$KeyValueStoreFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$PermissionFailureImplCopyWith(_$PermissionFailureImpl value,
          $Res Function(_$PermissionFailureImpl) then) =
      __$$PermissionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PermissionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PermissionFailureImpl>
    implements _$$PermissionFailureImplCopyWith<$Res> {
  __$$PermissionFailureImplCopyWithImpl(_$PermissionFailureImpl _value,
      $Res Function(_$PermissionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PermissionFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PermissionFailureImpl implements PermissionFailure {
  const _$PermissionFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.permissionFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionFailureImplCopyWith<_$PermissionFailureImpl> get copyWith =>
      __$$PermissionFailureImplCopyWithImpl<_$PermissionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) firebaAuthFailure,
    required TResult Function(String message) unknownFailure,
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function(String message) keyValueStoreFailure,
    required TResult Function(String message) permissionFailure,
    required TResult Function(String message) requestCancelled,
  }) {
    return permissionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? firebaAuthFailure,
    TResult? Function(String message)? unknownFailure,
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function(String message)? keyValueStoreFailure,
    TResult? Function(String message)? permissionFailure,
    TResult? Function(String message)? requestCancelled,
  }) {
    return permissionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? firebaAuthFailure,
    TResult Function(String message)? unknownFailure,
    TResult Function(String message)? connectionFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function(String message)? keyValueStoreFailure,
    TResult Function(String message)? permissionFailure,
    TResult Function(String message)? requestCancelled,
    required TResult orElse(),
  }) {
    if (permissionFailure != null) {
      return permissionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FirebaseAuthFailure value) firebaAuthFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(DatabaseFailure value) databaseFailure,
    required TResult Function(KeyValueStoreFailure value) keyValueStoreFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(RequestCancelledFailure value) requestCancelled,
  }) {
    return permissionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(DatabaseFailure value)? databaseFailure,
    TResult? Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(RequestCancelledFailure value)? requestCancelled,
  }) {
    return permissionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(DatabaseFailure value)? databaseFailure,
    TResult Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(RequestCancelledFailure value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (permissionFailure != null) {
      return permissionFailure(this);
    }
    return orElse();
  }
}

abstract class PermissionFailure implements Failure {
  const factory PermissionFailure(final String message) =
      _$PermissionFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionFailureImplCopyWith<_$PermissionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCancelledFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$RequestCancelledFailureImplCopyWith(
          _$RequestCancelledFailureImpl value,
          $Res Function(_$RequestCancelledFailureImpl) then) =
      __$$RequestCancelledFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RequestCancelledFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$RequestCancelledFailureImpl>
    implements _$$RequestCancelledFailureImplCopyWith<$Res> {
  __$$RequestCancelledFailureImplCopyWithImpl(
      _$RequestCancelledFailureImpl _value,
      $Res Function(_$RequestCancelledFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RequestCancelledFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestCancelledFailureImpl implements RequestCancelledFailure {
  const _$RequestCancelledFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.requestCancelled(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCancelledFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCancelledFailureImplCopyWith<_$RequestCancelledFailureImpl>
      get copyWith => __$$RequestCancelledFailureImplCopyWithImpl<
          _$RequestCancelledFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) firebaAuthFailure,
    required TResult Function(String message) unknownFailure,
    required TResult Function(String message) connectionFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function(String message) keyValueStoreFailure,
    required TResult Function(String message) permissionFailure,
    required TResult Function(String message) requestCancelled,
  }) {
    return requestCancelled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? firebaAuthFailure,
    TResult? Function(String message)? unknownFailure,
    TResult? Function(String message)? connectionFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function(String message)? keyValueStoreFailure,
    TResult? Function(String message)? permissionFailure,
    TResult? Function(String message)? requestCancelled,
  }) {
    return requestCancelled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? firebaAuthFailure,
    TResult Function(String message)? unknownFailure,
    TResult Function(String message)? connectionFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function(String message)? keyValueStoreFailure,
    TResult Function(String message)? permissionFailure,
    TResult Function(String message)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(FirebaseAuthFailure value) firebaAuthFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(DatabaseFailure value) databaseFailure,
    required TResult Function(KeyValueStoreFailure value) keyValueStoreFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(RequestCancelledFailure value) requestCancelled,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(DatabaseFailure value)? databaseFailure,
    TResult? Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(RequestCancelledFailure value)? requestCancelled,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(FirebaseAuthFailure value)? firebaAuthFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(DatabaseFailure value)? databaseFailure,
    TResult Function(KeyValueStoreFailure value)? keyValueStoreFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(RequestCancelledFailure value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class RequestCancelledFailure implements Failure {
  const factory RequestCancelledFailure(final String message) =
      _$RequestCancelledFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCancelledFailureImplCopyWith<_$RequestCancelledFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
