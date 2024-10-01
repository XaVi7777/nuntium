// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> recommended) data,
    required TResult Function() empty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> recommended)? data,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> recommended)? data,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendedStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedStateCopyWith<$Res> {
  factory $RecommendedStateCopyWith(
          RecommendedState value, $Res Function(RecommendedState) then) =
      _$RecommendedStateCopyWithImpl<$Res, RecommendedState>;
}

/// @nodoc
class _$RecommendedStateCopyWithImpl<$Res, $Val extends RecommendedState>
    implements $RecommendedStateCopyWith<$Res> {
  _$RecommendedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecommendedStateDataImplCopyWith<$Res> {
  factory _$$RecommendedStateDataImplCopyWith(_$RecommendedStateDataImpl value,
          $Res Function(_$RecommendedStateDataImpl) then) =
      __$$RecommendedStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArticleModel> recommended});
}

/// @nodoc
class __$$RecommendedStateDataImplCopyWithImpl<$Res>
    extends _$RecommendedStateCopyWithImpl<$Res, _$RecommendedStateDataImpl>
    implements _$$RecommendedStateDataImplCopyWith<$Res> {
  __$$RecommendedStateDataImplCopyWithImpl(_$RecommendedStateDataImpl _value,
      $Res Function(_$RecommendedStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommended = null,
  }) {
    return _then(_$RecommendedStateDataImpl(
      recommended: null == recommended
          ? _value._recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc

class _$RecommendedStateDataImpl extends RecommendedStateData {
  const _$RecommendedStateDataImpl(
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
    return 'RecommendedState.data(recommended: $recommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedStateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._recommended, _recommended));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recommended));

  /// Create a copy of RecommendedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedStateDataImplCopyWith<_$RecommendedStateDataImpl>
      get copyWith =>
          __$$RecommendedStateDataImplCopyWithImpl<_$RecommendedStateDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> recommended) data,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return data(recommended);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> recommended)? data,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return data?.call(recommended);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> recommended)? data,
    TResult Function()? empty,
    TResult Function()? error,
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
    required TResult Function(RecommendedStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class RecommendedStateData extends RecommendedState {
  const factory RecommendedStateData(
          {required final List<ArticleModel> recommended}) =
      _$RecommendedStateDataImpl;
  const RecommendedStateData._() : super._();

  List<ArticleModel> get recommended;

  /// Create a copy of RecommendedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedStateDataImplCopyWith<_$RecommendedStateDataImpl>
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
    extends _$RecommendedStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'RecommendedState.empty()';
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
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> recommended)? data,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> recommended)? data,
    TResult Function()? empty,
    TResult Function()? error,
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
    required TResult Function(RecommendedStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends RecommendedState {
  const factory _Empty() = _$EmptyImpl;
  const _Empty._() : super._();
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RecommendedStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl() : super._();

  @override
  String toString() {
    return 'RecommendedState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> recommended) data,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> recommended)? data,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> recommended)? data,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendedStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends RecommendedState {
  const factory _Error() = _$ErrorImpl;
  const _Error._() : super._();
}

/// @nodoc
mixin _$RecommendedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ArticleModel> recommended) updateRecommended,
    required TResult Function(ArticleModel article) addBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ArticleModel> recommended)? updateRecommended,
    TResult? Function(ArticleModel article)? addBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ArticleModel> recommended)? updateRecommended,
    TResult Function(ArticleModel article)? addBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendedEventInit value) init,
    required TResult Function(RecommendedEventUpdateRecommended value)
        updateRecommended,
    required TResult Function(RecommendedEventAddBookmark value) addBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedEventInit value)? init,
    TResult? Function(RecommendedEventUpdateRecommended value)?
        updateRecommended,
    TResult? Function(RecommendedEventAddBookmark value)? addBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedEventInit value)? init,
    TResult Function(RecommendedEventUpdateRecommended value)?
        updateRecommended,
    TResult Function(RecommendedEventAddBookmark value)? addBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedEventCopyWith<$Res> {
  factory $RecommendedEventCopyWith(
          RecommendedEvent value, $Res Function(RecommendedEvent) then) =
      _$RecommendedEventCopyWithImpl<$Res, RecommendedEvent>;
}

/// @nodoc
class _$RecommendedEventCopyWithImpl<$Res, $Val extends RecommendedEvent>
    implements $RecommendedEventCopyWith<$Res> {
  _$RecommendedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecommendedEventInitImplCopyWith<$Res> {
  factory _$$RecommendedEventInitImplCopyWith(_$RecommendedEventInitImpl value,
          $Res Function(_$RecommendedEventInitImpl) then) =
      __$$RecommendedEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecommendedEventInitImplCopyWithImpl<$Res>
    extends _$RecommendedEventCopyWithImpl<$Res, _$RecommendedEventInitImpl>
    implements _$$RecommendedEventInitImplCopyWith<$Res> {
  __$$RecommendedEventInitImplCopyWithImpl(_$RecommendedEventInitImpl _value,
      $Res Function(_$RecommendedEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecommendedEventInitImpl implements RecommendedEventInit {
  const _$RecommendedEventInitImpl();

  @override
  String toString() {
    return 'RecommendedEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ArticleModel> recommended) updateRecommended,
    required TResult Function(ArticleModel article) addBookmark,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ArticleModel> recommended)? updateRecommended,
    TResult? Function(ArticleModel article)? addBookmark,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ArticleModel> recommended)? updateRecommended,
    TResult Function(ArticleModel article)? addBookmark,
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
    required TResult Function(RecommendedEventInit value) init,
    required TResult Function(RecommendedEventUpdateRecommended value)
        updateRecommended,
    required TResult Function(RecommendedEventAddBookmark value) addBookmark,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedEventInit value)? init,
    TResult? Function(RecommendedEventUpdateRecommended value)?
        updateRecommended,
    TResult? Function(RecommendedEventAddBookmark value)? addBookmark,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedEventInit value)? init,
    TResult Function(RecommendedEventUpdateRecommended value)?
        updateRecommended,
    TResult Function(RecommendedEventAddBookmark value)? addBookmark,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class RecommendedEventInit implements RecommendedEvent {
  const factory RecommendedEventInit() = _$RecommendedEventInitImpl;
}

/// @nodoc
abstract class _$$RecommendedEventUpdateRecommendedImplCopyWith<$Res> {
  factory _$$RecommendedEventUpdateRecommendedImplCopyWith(
          _$RecommendedEventUpdateRecommendedImpl value,
          $Res Function(_$RecommendedEventUpdateRecommendedImpl) then) =
      __$$RecommendedEventUpdateRecommendedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArticleModel> recommended});
}

/// @nodoc
class __$$RecommendedEventUpdateRecommendedImplCopyWithImpl<$Res>
    extends _$RecommendedEventCopyWithImpl<$Res,
        _$RecommendedEventUpdateRecommendedImpl>
    implements _$$RecommendedEventUpdateRecommendedImplCopyWith<$Res> {
  __$$RecommendedEventUpdateRecommendedImplCopyWithImpl(
      _$RecommendedEventUpdateRecommendedImpl _value,
      $Res Function(_$RecommendedEventUpdateRecommendedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommended = null,
  }) {
    return _then(_$RecommendedEventUpdateRecommendedImpl(
      null == recommended
          ? _value._recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc

class _$RecommendedEventUpdateRecommendedImpl
    implements RecommendedEventUpdateRecommended {
  const _$RecommendedEventUpdateRecommendedImpl(
      final List<ArticleModel> recommended)
      : _recommended = recommended;

  final List<ArticleModel> _recommended;
  @override
  List<ArticleModel> get recommended {
    if (_recommended is EqualUnmodifiableListView) return _recommended;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommended);
  }

  @override
  String toString() {
    return 'RecommendedEvent.updateRecommended(recommended: $recommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedEventUpdateRecommendedImpl &&
            const DeepCollectionEquality()
                .equals(other._recommended, _recommended));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recommended));

  /// Create a copy of RecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedEventUpdateRecommendedImplCopyWith<
          _$RecommendedEventUpdateRecommendedImpl>
      get copyWith => __$$RecommendedEventUpdateRecommendedImplCopyWithImpl<
          _$RecommendedEventUpdateRecommendedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ArticleModel> recommended) updateRecommended,
    required TResult Function(ArticleModel article) addBookmark,
  }) {
    return updateRecommended(recommended);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ArticleModel> recommended)? updateRecommended,
    TResult? Function(ArticleModel article)? addBookmark,
  }) {
    return updateRecommended?.call(recommended);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ArticleModel> recommended)? updateRecommended,
    TResult Function(ArticleModel article)? addBookmark,
    required TResult orElse(),
  }) {
    if (updateRecommended != null) {
      return updateRecommended(recommended);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendedEventInit value) init,
    required TResult Function(RecommendedEventUpdateRecommended value)
        updateRecommended,
    required TResult Function(RecommendedEventAddBookmark value) addBookmark,
  }) {
    return updateRecommended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedEventInit value)? init,
    TResult? Function(RecommendedEventUpdateRecommended value)?
        updateRecommended,
    TResult? Function(RecommendedEventAddBookmark value)? addBookmark,
  }) {
    return updateRecommended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedEventInit value)? init,
    TResult Function(RecommendedEventUpdateRecommended value)?
        updateRecommended,
    TResult Function(RecommendedEventAddBookmark value)? addBookmark,
    required TResult orElse(),
  }) {
    if (updateRecommended != null) {
      return updateRecommended(this);
    }
    return orElse();
  }
}

abstract class RecommendedEventUpdateRecommended implements RecommendedEvent {
  const factory RecommendedEventUpdateRecommended(
          final List<ArticleModel> recommended) =
      _$RecommendedEventUpdateRecommendedImpl;

  List<ArticleModel> get recommended;

  /// Create a copy of RecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedEventUpdateRecommendedImplCopyWith<
          _$RecommendedEventUpdateRecommendedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecommendedEventAddBookmarkImplCopyWith<$Res> {
  factory _$$RecommendedEventAddBookmarkImplCopyWith(
          _$RecommendedEventAddBookmarkImpl value,
          $Res Function(_$RecommendedEventAddBookmarkImpl) then) =
      __$$RecommendedEventAddBookmarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArticleModel article});

  $ArticleModelCopyWith<$Res> get article;
}

/// @nodoc
class __$$RecommendedEventAddBookmarkImplCopyWithImpl<$Res>
    extends _$RecommendedEventCopyWithImpl<$Res,
        _$RecommendedEventAddBookmarkImpl>
    implements _$$RecommendedEventAddBookmarkImplCopyWith<$Res> {
  __$$RecommendedEventAddBookmarkImplCopyWithImpl(
      _$RecommendedEventAddBookmarkImpl _value,
      $Res Function(_$RecommendedEventAddBookmarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_$RecommendedEventAddBookmarkImpl(
      null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
    ));
  }

  /// Create a copy of RecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleModelCopyWith<$Res> get article {
    return $ArticleModelCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value));
    });
  }
}

/// @nodoc

class _$RecommendedEventAddBookmarkImpl implements RecommendedEventAddBookmark {
  const _$RecommendedEventAddBookmarkImpl(this.article);

  @override
  final ArticleModel article;

  @override
  String toString() {
    return 'RecommendedEvent.addBookmark(article: $article)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedEventAddBookmarkImpl &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  /// Create a copy of RecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedEventAddBookmarkImplCopyWith<_$RecommendedEventAddBookmarkImpl>
      get copyWith => __$$RecommendedEventAddBookmarkImplCopyWithImpl<
          _$RecommendedEventAddBookmarkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ArticleModel> recommended) updateRecommended,
    required TResult Function(ArticleModel article) addBookmark,
  }) {
    return addBookmark(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ArticleModel> recommended)? updateRecommended,
    TResult? Function(ArticleModel article)? addBookmark,
  }) {
    return addBookmark?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ArticleModel> recommended)? updateRecommended,
    TResult Function(ArticleModel article)? addBookmark,
    required TResult orElse(),
  }) {
    if (addBookmark != null) {
      return addBookmark(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendedEventInit value) init,
    required TResult Function(RecommendedEventUpdateRecommended value)
        updateRecommended,
    required TResult Function(RecommendedEventAddBookmark value) addBookmark,
  }) {
    return addBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedEventInit value)? init,
    TResult? Function(RecommendedEventUpdateRecommended value)?
        updateRecommended,
    TResult? Function(RecommendedEventAddBookmark value)? addBookmark,
  }) {
    return addBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedEventInit value)? init,
    TResult Function(RecommendedEventUpdateRecommended value)?
        updateRecommended,
    TResult Function(RecommendedEventAddBookmark value)? addBookmark,
    required TResult orElse(),
  }) {
    if (addBookmark != null) {
      return addBookmark(this);
    }
    return orElse();
  }
}

abstract class RecommendedEventAddBookmark implements RecommendedEvent {
  const factory RecommendedEventAddBookmark(final ArticleModel article) =
      _$RecommendedEventAddBookmarkImpl;

  ArticleModel get article;

  /// Create a copy of RecommendedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedEventAddBookmarkImplCopyWith<_$RecommendedEventAddBookmarkImpl>
      get copyWith => throw _privateConstructorUsedError;
}
