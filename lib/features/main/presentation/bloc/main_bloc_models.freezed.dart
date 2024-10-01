// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activeIndex) data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int activeIndex)? data,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activeIndex)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateData value) data,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MainStateDataImplCopyWith<$Res> {
  factory _$$MainStateDataImplCopyWith(
          _$MainStateDataImpl value, $Res Function(_$MainStateDataImpl) then) =
      __$$MainStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int activeIndex});
}

/// @nodoc
class __$$MainStateDataImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateDataImpl>
    implements _$$MainStateDataImplCopyWith<$Res> {
  __$$MainStateDataImplCopyWithImpl(
      _$MainStateDataImpl _value, $Res Function(_$MainStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeIndex = null,
  }) {
    return _then(_$MainStateDataImpl(
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainStateDataImpl extends MainStateData {
  const _$MainStateDataImpl({required this.activeIndex}) : super._();

  @override
  final int activeIndex;

  @override
  String toString() {
    return 'MainState.data(activeIndex: $activeIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateDataImpl &&
            (identical(other.activeIndex, activeIndex) ||
                other.activeIndex == activeIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeIndex);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateDataImplCopyWith<_$MainStateDataImpl> get copyWith =>
      __$$MainStateDataImplCopyWithImpl<_$MainStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activeIndex) data,
    required TResult Function() empty,
  }) {
    return data(activeIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int activeIndex)? data,
    TResult? Function()? empty,
  }) {
    return data?.call(activeIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activeIndex)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(activeIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class MainStateData extends MainState {
  const factory MainStateData({required final int activeIndex}) =
      _$MainStateDataImpl;
  const MainStateData._() : super._();

  int get activeIndex;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainStateDataImplCopyWith<_$MainStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'MainState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activeIndex) data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int activeIndex)? data,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activeIndex)? data,
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
    required TResult Function(MainStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends MainState {
  const factory _Empty() = _$EmptyImpl;
  const _Empty._() : super._();
}

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) updateMainIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int index)? updateMainIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? updateMainIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventInit value) init,
    required TResult Function(MainEventUpdateMainIndex value) updateMainIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventInit value)? init,
    TResult? Function(MainEventUpdateMainIndex value)? updateMainIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventInit value)? init,
    TResult Function(MainEventUpdateMainIndex value)? updateMainIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MainEventInitImplCopyWith<$Res> {
  factory _$$MainEventInitImplCopyWith(
          _$MainEventInitImpl value, $Res Function(_$MainEventInitImpl) then) =
      __$$MainEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventInitImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventInitImpl>
    implements _$$MainEventInitImplCopyWith<$Res> {
  __$$MainEventInitImplCopyWithImpl(
      _$MainEventInitImpl _value, $Res Function(_$MainEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MainEventInitImpl implements MainEventInit {
  const _$MainEventInitImpl();

  @override
  String toString() {
    return 'MainEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) updateMainIndex,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int index)? updateMainIndex,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? updateMainIndex,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventInit value) init,
    required TResult Function(MainEventUpdateMainIndex value) updateMainIndex,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventInit value)? init,
    TResult? Function(MainEventUpdateMainIndex value)? updateMainIndex,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventInit value)? init,
    TResult Function(MainEventUpdateMainIndex value)? updateMainIndex,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class MainEventInit implements MainEvent {
  const factory MainEventInit() = _$MainEventInitImpl;
}

/// @nodoc
abstract class _$$MainEventUpdateMainIndexImplCopyWith<$Res> {
  factory _$$MainEventUpdateMainIndexImplCopyWith(
          _$MainEventUpdateMainIndexImpl value,
          $Res Function(_$MainEventUpdateMainIndexImpl) then) =
      __$$MainEventUpdateMainIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$MainEventUpdateMainIndexImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventUpdateMainIndexImpl>
    implements _$$MainEventUpdateMainIndexImplCopyWith<$Res> {
  __$$MainEventUpdateMainIndexImplCopyWithImpl(
      _$MainEventUpdateMainIndexImpl _value,
      $Res Function(_$MainEventUpdateMainIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$MainEventUpdateMainIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainEventUpdateMainIndexImpl implements MainEventUpdateMainIndex {
  const _$MainEventUpdateMainIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MainEvent.updateMainIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventUpdateMainIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEventUpdateMainIndexImplCopyWith<_$MainEventUpdateMainIndexImpl>
      get copyWith => __$$MainEventUpdateMainIndexImplCopyWithImpl<
          _$MainEventUpdateMainIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) updateMainIndex,
  }) {
    return updateMainIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int index)? updateMainIndex,
  }) {
    return updateMainIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? updateMainIndex,
    required TResult orElse(),
  }) {
    if (updateMainIndex != null) {
      return updateMainIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventInit value) init,
    required TResult Function(MainEventUpdateMainIndex value) updateMainIndex,
  }) {
    return updateMainIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventInit value)? init,
    TResult? Function(MainEventUpdateMainIndex value)? updateMainIndex,
  }) {
    return updateMainIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventInit value)? init,
    TResult Function(MainEventUpdateMainIndex value)? updateMainIndex,
    required TResult orElse(),
  }) {
    if (updateMainIndex != null) {
      return updateMainIndex(this);
    }
    return orElse();
  }
}

abstract class MainEventUpdateMainIndex implements MainEvent {
  const factory MainEventUpdateMainIndex(final int index) =
      _$MainEventUpdateMainIndexImpl;

  int get index;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainEventUpdateMainIndexImplCopyWith<_$MainEventUpdateMainIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}
