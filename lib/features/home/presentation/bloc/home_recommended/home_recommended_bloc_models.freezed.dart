// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_recommended_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeRecommendedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> recommended) data,
    required TResult Function() empty,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> recommended)? data,
    TResult? Function()? empty,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> recommended)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRecommendedStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeRecommendedStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRecommendedStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRecommendedStateCopyWith<$Res> {
  factory $HomeRecommendedStateCopyWith(HomeRecommendedState value,
          $Res Function(HomeRecommendedState) then) =
      _$HomeRecommendedStateCopyWithImpl<$Res, HomeRecommendedState>;
}

/// @nodoc
class _$HomeRecommendedStateCopyWithImpl<$Res,
        $Val extends HomeRecommendedState>
    implements $HomeRecommendedStateCopyWith<$Res> {
  _$HomeRecommendedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeRecommendedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeRecommendedStateDataImplCopyWith<$Res> {
  factory _$$HomeRecommendedStateDataImplCopyWith(
          _$HomeRecommendedStateDataImpl value,
          $Res Function(_$HomeRecommendedStateDataImpl) then) =
      __$$HomeRecommendedStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArticleModel> recommended});
}

/// @nodoc
class __$$HomeRecommendedStateDataImplCopyWithImpl<$Res>
    extends _$HomeRecommendedStateCopyWithImpl<$Res,
        _$HomeRecommendedStateDataImpl>
    implements _$$HomeRecommendedStateDataImplCopyWith<$Res> {
  __$$HomeRecommendedStateDataImplCopyWithImpl(
      _$HomeRecommendedStateDataImpl _value,
      $Res Function(_$HomeRecommendedStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeRecommendedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommended = null,
  }) {
    return _then(_$HomeRecommendedStateDataImpl(
      recommended: null == recommended
          ? _value._recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc

class _$HomeRecommendedStateDataImpl extends HomeRecommendedStateData {
  const _$HomeRecommendedStateDataImpl(
      {required final List<ArticleModel> recommended})
      : _recommended = recommended,
        super._();

  final List<ArticleModel> _recommended;
  @override
  List<ArticleModel> get recommended {
    if (_recommended is EqualUnmodifiableListView) return _recommended;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommended);
  }

  @override
  String toString() {
    return 'HomeRecommendedState.data(recommended: $recommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRecommendedStateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._recommended, _recommended));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recommended));

  /// Create a copy of HomeRecommendedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeRecommendedStateDataImplCopyWith<_$HomeRecommendedStateDataImpl>
      get copyWith => __$$HomeRecommendedStateDataImplCopyWithImpl<
          _$HomeRecommendedStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> recommended) data,
    required TResult Function() empty,
    required TResult Function() loading,
  }) {
    return data(recommended);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> recommended)? data,
    TResult? Function()? empty,
    TResult? Function()? loading,
  }) {
    return data?.call(recommended);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> recommended)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(recommended);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRecommendedStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeRecommendedStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRecommendedStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HomeRecommendedStateData extends HomeRecommendedState {
  const factory HomeRecommendedStateData(
          {required final List<ArticleModel> recommended}) =
      _$HomeRecommendedStateDataImpl;
  const HomeRecommendedStateData._() : super._();

  List<ArticleModel> get recommended;

  /// Create a copy of HomeRecommendedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeRecommendedStateDataImplCopyWith<_$HomeRecommendedStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$HomeRecommendedStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeRecommendedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'HomeRecommendedState.empty()';
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
    required TResult Function(List<ArticleModel> recommended) data,
    required TResult Function() empty,
    required TResult Function() loading,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> recommended)? data,
    TResult? Function()? empty,
    TResult? Function()? loading,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> recommended)? data,
    TResult Function()? empty,
    TResult Function()? loading,
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
    required TResult Function(HomeRecommendedStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeRecommendedStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRecommendedStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends HomeRecommendedState {
  const factory _Empty() = _$EmptyImpl;
  const _Empty._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeRecommendedStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeRecommendedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'HomeRecommendedState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> recommended) data,
    required TResult Function() empty,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> recommended)? data,
    TResult? Function()? empty,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> recommended)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRecommendedStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeRecommendedStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRecommendedStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends HomeRecommendedState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
mixin _$HomeRecommendedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? searchValue) search,
    required TResult Function(List<ArticleModel> articles) updateRecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? searchValue)? search,
    TResult? Function(List<ArticleModel> articles)? updateRecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? searchValue)? search,
    TResult Function(List<ArticleModel> articles)? updateRecommended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRecommendedEventInit value) init,
    required TResult Function(HomeRecommendedEventSearch value) search,
    required TResult Function(HomeRecommendedEventUpdateRecommended value)
        updateRecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeRecommendedEventInit value)? init,
    TResult? Function(HomeRecommendedEventSearch value)? search,
    TResult? Function(HomeRecommendedEventUpdateRecommended value)?
        updateRecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRecommendedEventInit value)? init,
    TResult Function(HomeRecommendedEventSearch value)? search,
    TResult Function(HomeRecommendedEventUpdateRecommended value)?
        updateRecommended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRecommendedEventCopyWith<$Res> {
  factory $HomeRecommendedEventCopyWith(HomeRecommendedEvent value,
          $Res Function(HomeRecommendedEvent) then) =
      _$HomeRecommendedEventCopyWithImpl<$Res, HomeRecommendedEvent>;
}

/// @nodoc
class _$HomeRecommendedEventCopyWithImpl<$Res,
        $Val extends HomeRecommendedEvent>
    implements $HomeRecommendedEventCopyWith<$Res> {
  _$HomeRecommendedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeRecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeRecommendedEventInitImplCopyWith<$Res> {
  factory _$$HomeRecommendedEventInitImplCopyWith(
          _$HomeRecommendedEventInitImpl value,
          $Res Function(_$HomeRecommendedEventInitImpl) then) =
      __$$HomeRecommendedEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeRecommendedEventInitImplCopyWithImpl<$Res>
    extends _$HomeRecommendedEventCopyWithImpl<$Res,
        _$HomeRecommendedEventInitImpl>
    implements _$$HomeRecommendedEventInitImplCopyWith<$Res> {
  __$$HomeRecommendedEventInitImplCopyWithImpl(
      _$HomeRecommendedEventInitImpl _value,
      $Res Function(_$HomeRecommendedEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeRecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeRecommendedEventInitImpl implements HomeRecommendedEventInit {
  const _$HomeRecommendedEventInitImpl();

  @override
  String toString() {
    return 'HomeRecommendedEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRecommendedEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? searchValue) search,
    required TResult Function(List<ArticleModel> articles) updateRecommended,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? searchValue)? search,
    TResult? Function(List<ArticleModel> articles)? updateRecommended,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? searchValue)? search,
    TResult Function(List<ArticleModel> articles)? updateRecommended,
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
    required TResult Function(HomeRecommendedEventInit value) init,
    required TResult Function(HomeRecommendedEventSearch value) search,
    required TResult Function(HomeRecommendedEventUpdateRecommended value)
        updateRecommended,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeRecommendedEventInit value)? init,
    TResult? Function(HomeRecommendedEventSearch value)? search,
    TResult? Function(HomeRecommendedEventUpdateRecommended value)?
        updateRecommended,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRecommendedEventInit value)? init,
    TResult Function(HomeRecommendedEventSearch value)? search,
    TResult Function(HomeRecommendedEventUpdateRecommended value)?
        updateRecommended,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class HomeRecommendedEventInit implements HomeRecommendedEvent {
  const factory HomeRecommendedEventInit() = _$HomeRecommendedEventInitImpl;
}

/// @nodoc
abstract class _$$HomeRecommendedEventSearchImplCopyWith<$Res> {
  factory _$$HomeRecommendedEventSearchImplCopyWith(
          _$HomeRecommendedEventSearchImpl value,
          $Res Function(_$HomeRecommendedEventSearchImpl) then) =
      __$$HomeRecommendedEventSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchValue});
}

/// @nodoc
class __$$HomeRecommendedEventSearchImplCopyWithImpl<$Res>
    extends _$HomeRecommendedEventCopyWithImpl<$Res,
        _$HomeRecommendedEventSearchImpl>
    implements _$$HomeRecommendedEventSearchImplCopyWith<$Res> {
  __$$HomeRecommendedEventSearchImplCopyWithImpl(
      _$HomeRecommendedEventSearchImpl _value,
      $Res Function(_$HomeRecommendedEventSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeRecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = freezed,
  }) {
    return _then(_$HomeRecommendedEventSearchImpl(
      freezed == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeRecommendedEventSearchImpl implements HomeRecommendedEventSearch {
  const _$HomeRecommendedEventSearchImpl(this.searchValue);

  @override
  final String? searchValue;

  @override
  String toString() {
    return 'HomeRecommendedEvent.search(searchValue: $searchValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRecommendedEventSearchImpl &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchValue);

  /// Create a copy of HomeRecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeRecommendedEventSearchImplCopyWith<_$HomeRecommendedEventSearchImpl>
      get copyWith => __$$HomeRecommendedEventSearchImplCopyWithImpl<
          _$HomeRecommendedEventSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? searchValue) search,
    required TResult Function(List<ArticleModel> articles) updateRecommended,
  }) {
    return search(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? searchValue)? search,
    TResult? Function(List<ArticleModel> articles)? updateRecommended,
  }) {
    return search?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? searchValue)? search,
    TResult Function(List<ArticleModel> articles)? updateRecommended,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRecommendedEventInit value) init,
    required TResult Function(HomeRecommendedEventSearch value) search,
    required TResult Function(HomeRecommendedEventUpdateRecommended value)
        updateRecommended,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeRecommendedEventInit value)? init,
    TResult? Function(HomeRecommendedEventSearch value)? search,
    TResult? Function(HomeRecommendedEventUpdateRecommended value)?
        updateRecommended,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRecommendedEventInit value)? init,
    TResult Function(HomeRecommendedEventSearch value)? search,
    TResult Function(HomeRecommendedEventUpdateRecommended value)?
        updateRecommended,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class HomeRecommendedEventSearch implements HomeRecommendedEvent {
  const factory HomeRecommendedEventSearch(final String? searchValue) =
      _$HomeRecommendedEventSearchImpl;

  String? get searchValue;

  /// Create a copy of HomeRecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeRecommendedEventSearchImplCopyWith<_$HomeRecommendedEventSearchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeRecommendedEventUpdateRecommendedImplCopyWith<$Res> {
  factory _$$HomeRecommendedEventUpdateRecommendedImplCopyWith(
          _$HomeRecommendedEventUpdateRecommendedImpl value,
          $Res Function(_$HomeRecommendedEventUpdateRecommendedImpl) then) =
      __$$HomeRecommendedEventUpdateRecommendedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArticleModel> articles});
}

/// @nodoc
class __$$HomeRecommendedEventUpdateRecommendedImplCopyWithImpl<$Res>
    extends _$HomeRecommendedEventCopyWithImpl<$Res,
        _$HomeRecommendedEventUpdateRecommendedImpl>
    implements _$$HomeRecommendedEventUpdateRecommendedImplCopyWith<$Res> {
  __$$HomeRecommendedEventUpdateRecommendedImplCopyWithImpl(
      _$HomeRecommendedEventUpdateRecommendedImpl _value,
      $Res Function(_$HomeRecommendedEventUpdateRecommendedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeRecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$HomeRecommendedEventUpdateRecommendedImpl(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc

class _$HomeRecommendedEventUpdateRecommendedImpl
    implements HomeRecommendedEventUpdateRecommended {
  const _$HomeRecommendedEventUpdateRecommendedImpl(
      final List<ArticleModel> articles)
      : _articles = articles;

  final List<ArticleModel> _articles;
  @override
  List<ArticleModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'HomeRecommendedEvent.updateRecommended(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRecommendedEventUpdateRecommendedImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  /// Create a copy of HomeRecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeRecommendedEventUpdateRecommendedImplCopyWith<
          _$HomeRecommendedEventUpdateRecommendedImpl>
      get copyWith => __$$HomeRecommendedEventUpdateRecommendedImplCopyWithImpl<
          _$HomeRecommendedEventUpdateRecommendedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? searchValue) search,
    required TResult Function(List<ArticleModel> articles) updateRecommended,
  }) {
    return updateRecommended(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? searchValue)? search,
    TResult? Function(List<ArticleModel> articles)? updateRecommended,
  }) {
    return updateRecommended?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? searchValue)? search,
    TResult Function(List<ArticleModel> articles)? updateRecommended,
    required TResult orElse(),
  }) {
    if (updateRecommended != null) {
      return updateRecommended(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRecommendedEventInit value) init,
    required TResult Function(HomeRecommendedEventSearch value) search,
    required TResult Function(HomeRecommendedEventUpdateRecommended value)
        updateRecommended,
  }) {
    return updateRecommended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeRecommendedEventInit value)? init,
    TResult? Function(HomeRecommendedEventSearch value)? search,
    TResult? Function(HomeRecommendedEventUpdateRecommended value)?
        updateRecommended,
  }) {
    return updateRecommended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRecommendedEventInit value)? init,
    TResult Function(HomeRecommendedEventSearch value)? search,
    TResult Function(HomeRecommendedEventUpdateRecommended value)?
        updateRecommended,
    required TResult orElse(),
  }) {
    if (updateRecommended != null) {
      return updateRecommended(this);
    }
    return orElse();
  }
}

abstract class HomeRecommendedEventUpdateRecommended
    implements HomeRecommendedEvent {
  const factory HomeRecommendedEventUpdateRecommended(
          final List<ArticleModel> articles) =
      _$HomeRecommendedEventUpdateRecommendedImpl;

  List<ArticleModel> get articles;

  /// Create a copy of HomeRecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeRecommendedEventUpdateRecommendedImplCopyWith<
          _$HomeRecommendedEventUpdateRecommendedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
