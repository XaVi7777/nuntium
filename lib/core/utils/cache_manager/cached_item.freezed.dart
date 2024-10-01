// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CachedItem<V> {
  DateTime get timestamp => throw _privateConstructorUsedError;
  V get value => throw _privateConstructorUsedError;

  /// Create a copy of CachedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CachedItemCopyWith<V, CachedItem<V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedItemCopyWith<V, $Res> {
  factory $CachedItemCopyWith(
          CachedItem<V> value, $Res Function(CachedItem<V>) then) =
      _$CachedItemCopyWithImpl<V, $Res, CachedItem<V>>;
  @useResult
  $Res call({DateTime timestamp, V value});
}

/// @nodoc
class _$CachedItemCopyWithImpl<V, $Res, $Val extends CachedItem<V>>
    implements $CachedItemCopyWith<V, $Res> {
  _$CachedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CachedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as V,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CachedItemImplCopyWith<V, $Res>
    implements $CachedItemCopyWith<V, $Res> {
  factory _$$CachedItemImplCopyWith(
          _$CachedItemImpl<V> value, $Res Function(_$CachedItemImpl<V>) then) =
      __$$CachedItemImplCopyWithImpl<V, $Res>;
  @override
  @useResult
  $Res call({DateTime timestamp, V value});
}

/// @nodoc
class __$$CachedItemImplCopyWithImpl<V, $Res>
    extends _$CachedItemCopyWithImpl<V, $Res, _$CachedItemImpl<V>>
    implements _$$CachedItemImplCopyWith<V, $Res> {
  __$$CachedItemImplCopyWithImpl(
      _$CachedItemImpl<V> _value, $Res Function(_$CachedItemImpl<V>) _then)
      : super(_value, _then);

  /// Create a copy of CachedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? value = freezed,
  }) {
    return _then(_$CachedItemImpl<V>(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as V,
    ));
  }
}

/// @nodoc

class _$CachedItemImpl<V> implements _CachedItem<V> {
  const _$CachedItemImpl({required this.timestamp, required this.value});

  @override
  final DateTime timestamp;
  @override
  final V value;

  @override
  String toString() {
    return 'CachedItem<$V>(timestamp: $timestamp, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CachedItemImpl<V> &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, const DeepCollectionEquality().hash(value));

  /// Create a copy of CachedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CachedItemImplCopyWith<V, _$CachedItemImpl<V>> get copyWith =>
      __$$CachedItemImplCopyWithImpl<V, _$CachedItemImpl<V>>(this, _$identity);
}

abstract class _CachedItem<V> implements CachedItem<V> {
  const factory _CachedItem(
      {required final DateTime timestamp,
      required final V value}) = _$CachedItemImpl<V>;

  @override
  DateTime get timestamp;
  @override
  V get value;

  /// Create a copy of CachedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CachedItemImplCopyWith<V, _$CachedItemImpl<V>> get copyWith =>
      throw _privateConstructorUsedError;
}
