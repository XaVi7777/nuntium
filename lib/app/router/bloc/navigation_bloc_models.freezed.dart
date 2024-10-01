// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationState {
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
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'NavigationState.empty()';
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
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends NavigationState {
  const factory _Empty() = _$EmptyImpl;
  const _Empty._() : super._();
}

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        push,
    required TResult Function(Object? result) pop,
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        replaceWith,
    required TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)
        replaceAllWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult? Function(Object? result)? pop,
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult? Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult Function(Object? result)? pop,
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationEventPush value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventReplaceWith value) replaceWith,
    required TResult Function(NavigationEventReplaceAllWith value)
        replaceAllWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationEventPush value)? push,
    TResult? Function(NavigationEventPop value)? pop,
    TResult? Function(NavigationEventReplaceWith value)? replaceWith,
    TResult? Function(NavigationEventReplaceAllWith value)? replaceAllWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPush value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventReplaceWith value)? replaceWith,
    TResult Function(NavigationEventReplaceAllWith value)? replaceAllWith,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res, NavigationEvent>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res, $Val extends NavigationEvent>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NavigationEventPushImplCopyWith<$Res> {
  factory _$$NavigationEventPushImplCopyWith(_$NavigationEventPushImpl value,
          $Res Function(_$NavigationEventPushImpl) then) =
      __$$NavigationEventPushImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PageRouteInfo<dynamic> route,
      void Function(NavigationFailure)? onFailure});
}

/// @nodoc
class __$$NavigationEventPushImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$NavigationEventPushImpl>
    implements _$$NavigationEventPushImplCopyWith<$Res> {
  __$$NavigationEventPushImplCopyWithImpl(_$NavigationEventPushImpl _value,
      $Res Function(_$NavigationEventPushImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? onFailure = freezed,
  }) {
    return _then(_$NavigationEventPushImpl(
      null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      onFailure: freezed == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as void Function(NavigationFailure)?,
    ));
  }
}

/// @nodoc

class _$NavigationEventPushImpl implements NavigationEventPush {
  const _$NavigationEventPushImpl(this.route, {this.onFailure});

  @override
  final PageRouteInfo<dynamic> route;
  @override
  final void Function(NavigationFailure)? onFailure;

  @override
  String toString() {
    return 'NavigationEvent.push(route: $route, onFailure: $onFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationEventPushImpl &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, onFailure);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationEventPushImplCopyWith<_$NavigationEventPushImpl> get copyWith =>
      __$$NavigationEventPushImplCopyWithImpl<_$NavigationEventPushImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        push,
    required TResult Function(Object? result) pop,
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        replaceWith,
    required TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)
        replaceAllWith,
  }) {
    return push(route, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult? Function(Object? result)? pop,
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult? Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
  }) {
    return push?.call(route, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult Function(Object? result)? pop,
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(route, onFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationEventPush value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventReplaceWith value) replaceWith,
    required TResult Function(NavigationEventReplaceAllWith value)
        replaceAllWith,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationEventPush value)? push,
    TResult? Function(NavigationEventPop value)? pop,
    TResult? Function(NavigationEventReplaceWith value)? replaceWith,
    TResult? Function(NavigationEventReplaceAllWith value)? replaceAllWith,
  }) {
    return push?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPush value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventReplaceWith value)? replaceWith,
    TResult Function(NavigationEventReplaceAllWith value)? replaceAllWith,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class NavigationEventPush implements NavigationEvent {
  const factory NavigationEventPush(final PageRouteInfo<dynamic> route,
          {final void Function(NavigationFailure)? onFailure}) =
      _$NavigationEventPushImpl;

  PageRouteInfo<dynamic> get route;
  void Function(NavigationFailure)? get onFailure;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationEventPushImplCopyWith<_$NavigationEventPushImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigationEventPopImplCopyWith<$Res> {
  factory _$$NavigationEventPopImplCopyWith(_$NavigationEventPopImpl value,
          $Res Function(_$NavigationEventPopImpl) then) =
      __$$NavigationEventPopImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? result});
}

/// @nodoc
class __$$NavigationEventPopImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$NavigationEventPopImpl>
    implements _$$NavigationEventPopImplCopyWith<$Res> {
  __$$NavigationEventPopImplCopyWithImpl(_$NavigationEventPopImpl _value,
      $Res Function(_$NavigationEventPopImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$NavigationEventPopImpl(
      result: freezed == result ? _value.result : result,
    ));
  }
}

/// @nodoc

class _$NavigationEventPopImpl implements NavigationEventPop {
  const _$NavigationEventPopImpl({this.result});

  @override
  final Object? result;

  @override
  String toString() {
    return 'NavigationEvent.pop(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationEventPopImpl &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationEventPopImplCopyWith<_$NavigationEventPopImpl> get copyWith =>
      __$$NavigationEventPopImplCopyWithImpl<_$NavigationEventPopImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        push,
    required TResult Function(Object? result) pop,
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        replaceWith,
    required TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)
        replaceAllWith,
  }) {
    return pop(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult? Function(Object? result)? pop,
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult? Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
  }) {
    return pop?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult Function(Object? result)? pop,
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationEventPush value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventReplaceWith value) replaceWith,
    required TResult Function(NavigationEventReplaceAllWith value)
        replaceAllWith,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationEventPush value)? push,
    TResult? Function(NavigationEventPop value)? pop,
    TResult? Function(NavigationEventReplaceWith value)? replaceWith,
    TResult? Function(NavigationEventReplaceAllWith value)? replaceAllWith,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPush value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventReplaceWith value)? replaceWith,
    TResult Function(NavigationEventReplaceAllWith value)? replaceAllWith,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class NavigationEventPop implements NavigationEvent {
  const factory NavigationEventPop({final Object? result}) =
      _$NavigationEventPopImpl;

  Object? get result;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationEventPopImplCopyWith<_$NavigationEventPopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigationEventReplaceWithImplCopyWith<$Res> {
  factory _$$NavigationEventReplaceWithImplCopyWith(
          _$NavigationEventReplaceWithImpl value,
          $Res Function(_$NavigationEventReplaceWithImpl) then) =
      __$$NavigationEventReplaceWithImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PageRouteInfo<dynamic> route,
      void Function(NavigationFailure)? onFailure});
}

/// @nodoc
class __$$NavigationEventReplaceWithImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res,
        _$NavigationEventReplaceWithImpl>
    implements _$$NavigationEventReplaceWithImplCopyWith<$Res> {
  __$$NavigationEventReplaceWithImplCopyWithImpl(
      _$NavigationEventReplaceWithImpl _value,
      $Res Function(_$NavigationEventReplaceWithImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? onFailure = freezed,
  }) {
    return _then(_$NavigationEventReplaceWithImpl(
      null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
      onFailure: freezed == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as void Function(NavigationFailure)?,
    ));
  }
}

/// @nodoc

class _$NavigationEventReplaceWithImpl implements NavigationEventReplaceWith {
  const _$NavigationEventReplaceWithImpl(this.route, {this.onFailure});

  @override
  final PageRouteInfo<dynamic> route;
  @override
  final void Function(NavigationFailure)? onFailure;

  @override
  String toString() {
    return 'NavigationEvent.replaceWith(route: $route, onFailure: $onFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationEventReplaceWithImpl &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, onFailure);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationEventReplaceWithImplCopyWith<_$NavigationEventReplaceWithImpl>
      get copyWith => __$$NavigationEventReplaceWithImplCopyWithImpl<
          _$NavigationEventReplaceWithImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        push,
    required TResult Function(Object? result) pop,
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        replaceWith,
    required TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)
        replaceAllWith,
  }) {
    return replaceWith(route, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult? Function(Object? result)? pop,
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult? Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
  }) {
    return replaceWith?.call(route, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult Function(Object? result)? pop,
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
    required TResult orElse(),
  }) {
    if (replaceWith != null) {
      return replaceWith(route, onFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationEventPush value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventReplaceWith value) replaceWith,
    required TResult Function(NavigationEventReplaceAllWith value)
        replaceAllWith,
  }) {
    return replaceWith(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationEventPush value)? push,
    TResult? Function(NavigationEventPop value)? pop,
    TResult? Function(NavigationEventReplaceWith value)? replaceWith,
    TResult? Function(NavigationEventReplaceAllWith value)? replaceAllWith,
  }) {
    return replaceWith?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPush value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventReplaceWith value)? replaceWith,
    TResult Function(NavigationEventReplaceAllWith value)? replaceAllWith,
    required TResult orElse(),
  }) {
    if (replaceWith != null) {
      return replaceWith(this);
    }
    return orElse();
  }
}

abstract class NavigationEventReplaceWith implements NavigationEvent {
  const factory NavigationEventReplaceWith(final PageRouteInfo<dynamic> route,
          {final void Function(NavigationFailure)? onFailure}) =
      _$NavigationEventReplaceWithImpl;

  PageRouteInfo<dynamic> get route;
  void Function(NavigationFailure)? get onFailure;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationEventReplaceWithImplCopyWith<_$NavigationEventReplaceWithImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigationEventReplaceAllWithImplCopyWith<$Res> {
  factory _$$NavigationEventReplaceAllWithImplCopyWith(
          _$NavigationEventReplaceAllWithImpl value,
          $Res Function(_$NavigationEventReplaceAllWithImpl) then) =
      __$$NavigationEventReplaceAllWithImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PageRouteInfo> routes,
      void Function(NavigationFailure)? onFailure,
      bool updateExistingRoutes});
}

/// @nodoc
class __$$NavigationEventReplaceAllWithImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res,
        _$NavigationEventReplaceAllWithImpl>
    implements _$$NavigationEventReplaceAllWithImplCopyWith<$Res> {
  __$$NavigationEventReplaceAllWithImplCopyWithImpl(
      _$NavigationEventReplaceAllWithImpl _value,
      $Res Function(_$NavigationEventReplaceAllWithImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = null,
    Object? onFailure = freezed,
    Object? updateExistingRoutes = null,
  }) {
    return _then(_$NavigationEventReplaceAllWithImpl(
      null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<PageRouteInfo>,
      onFailure: freezed == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as void Function(NavigationFailure)?,
      updateExistingRoutes: null == updateExistingRoutes
          ? _value.updateExistingRoutes
          : updateExistingRoutes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NavigationEventReplaceAllWithImpl
    implements NavigationEventReplaceAllWith {
  const _$NavigationEventReplaceAllWithImpl(final List<PageRouteInfo> routes,
      {this.onFailure, this.updateExistingRoutes = true})
      : _routes = routes;

  final List<PageRouteInfo> _routes;
  @override
  List<PageRouteInfo> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  final void Function(NavigationFailure)? onFailure;
  @override
  @JsonKey()
  final bool updateExistingRoutes;

  @override
  String toString() {
    return 'NavigationEvent.replaceAllWith(routes: $routes, onFailure: $onFailure, updateExistingRoutes: $updateExistingRoutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationEventReplaceAllWithImpl &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure) &&
            (identical(other.updateExistingRoutes, updateExistingRoutes) ||
                other.updateExistingRoutes == updateExistingRoutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_routes),
      onFailure,
      updateExistingRoutes);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationEventReplaceAllWithImplCopyWith<
          _$NavigationEventReplaceAllWithImpl>
      get copyWith => __$$NavigationEventReplaceAllWithImplCopyWithImpl<
          _$NavigationEventReplaceAllWithImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        push,
    required TResult Function(Object? result) pop,
    required TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)
        replaceWith,
    required TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)
        replaceAllWith,
  }) {
    return replaceAllWith(routes, onFailure, updateExistingRoutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult? Function(Object? result)? pop,
    TResult? Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult? Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
  }) {
    return replaceAllWith?.call(routes, onFailure, updateExistingRoutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        push,
    TResult Function(Object? result)? pop,
    TResult Function(PageRouteInfo<dynamic> route,
            void Function(NavigationFailure)? onFailure)?
        replaceWith,
    TResult Function(
            List<PageRouteInfo> routes,
            void Function(NavigationFailure)? onFailure,
            bool updateExistingRoutes)?
        replaceAllWith,
    required TResult orElse(),
  }) {
    if (replaceAllWith != null) {
      return replaceAllWith(routes, onFailure, updateExistingRoutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationEventPush value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventReplaceWith value) replaceWith,
    required TResult Function(NavigationEventReplaceAllWith value)
        replaceAllWith,
  }) {
    return replaceAllWith(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationEventPush value)? push,
    TResult? Function(NavigationEventPop value)? pop,
    TResult? Function(NavigationEventReplaceWith value)? replaceWith,
    TResult? Function(NavigationEventReplaceAllWith value)? replaceAllWith,
  }) {
    return replaceAllWith?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPush value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventReplaceWith value)? replaceWith,
    TResult Function(NavigationEventReplaceAllWith value)? replaceAllWith,
    required TResult orElse(),
  }) {
    if (replaceAllWith != null) {
      return replaceAllWith(this);
    }
    return orElse();
  }
}

abstract class NavigationEventReplaceAllWith implements NavigationEvent {
  const factory NavigationEventReplaceAllWith(final List<PageRouteInfo> routes,
      {final void Function(NavigationFailure)? onFailure,
      final bool updateExistingRoutes}) = _$NavigationEventReplaceAllWithImpl;

  List<PageRouteInfo> get routes;
  void Function(NavigationFailure)? get onFailure;
  bool get updateExistingRoutes;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationEventReplaceAllWithImplCopyWith<
          _$NavigationEventReplaceAllWithImpl>
      get copyWith => throw _privateConstructorUsedError;
}
