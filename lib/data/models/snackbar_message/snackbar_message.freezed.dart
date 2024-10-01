// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snackbar_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SnackbarMessage {
  String get message => throw _privateConstructorUsedError;
  SnackbarMessageType get type => throw _privateConstructorUsedError;

  /// Create a copy of SnackbarMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnackbarMessageCopyWith<SnackbarMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackbarMessageCopyWith<$Res> {
  factory $SnackbarMessageCopyWith(
          SnackbarMessage value, $Res Function(SnackbarMessage) then) =
      _$SnackbarMessageCopyWithImpl<$Res, SnackbarMessage>;
  @useResult
  $Res call({String message, SnackbarMessageType type});
}

/// @nodoc
class _$SnackbarMessageCopyWithImpl<$Res, $Val extends SnackbarMessage>
    implements $SnackbarMessageCopyWith<$Res> {
  _$SnackbarMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnackbarMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnackbarMessageType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnackbarMessageImplCopyWith<$Res>
    implements $SnackbarMessageCopyWith<$Res> {
  factory _$$SnackbarMessageImplCopyWith(_$SnackbarMessageImpl value,
          $Res Function(_$SnackbarMessageImpl) then) =
      __$$SnackbarMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, SnackbarMessageType type});
}

/// @nodoc
class __$$SnackbarMessageImplCopyWithImpl<$Res>
    extends _$SnackbarMessageCopyWithImpl<$Res, _$SnackbarMessageImpl>
    implements _$$SnackbarMessageImplCopyWith<$Res> {
  __$$SnackbarMessageImplCopyWithImpl(
      _$SnackbarMessageImpl _value, $Res Function(_$SnackbarMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackbarMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_$SnackbarMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnackbarMessageType,
    ));
  }
}

/// @nodoc

class _$SnackbarMessageImpl implements _SnackbarMessage {
  const _$SnackbarMessageImpl(
      {required this.message, this.type = SnackbarMessageType.none});

  @override
  final String message;
  @override
  @JsonKey()
  final SnackbarMessageType type;

  @override
  String toString() {
    return 'SnackbarMessage(message: $message, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackbarMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, type);

  /// Create a copy of SnackbarMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackbarMessageImplCopyWith<_$SnackbarMessageImpl> get copyWith =>
      __$$SnackbarMessageImplCopyWithImpl<_$SnackbarMessageImpl>(
          this, _$identity);
}

abstract class _SnackbarMessage implements SnackbarMessage {
  const factory _SnackbarMessage(
      {required final String message,
      final SnackbarMessageType type}) = _$SnackbarMessageImpl;

  @override
  String get message;
  @override
  SnackbarMessageType get type;

  /// Create a copy of SnackbarMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnackbarMessageImplCopyWith<_$SnackbarMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
