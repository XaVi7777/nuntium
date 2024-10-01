// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_articles_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeArticlesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> articles) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> articles)? data,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> articles)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeArticlesStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeArticlesStateCopyWith<$Res> {
  factory $HomeArticlesStateCopyWith(
          HomeArticlesState value, $Res Function(HomeArticlesState) then) =
      _$HomeArticlesStateCopyWithImpl<$Res, HomeArticlesState>;
}

/// @nodoc
class _$HomeArticlesStateCopyWithImpl<$Res, $Val extends HomeArticlesState>
    implements $HomeArticlesStateCopyWith<$Res> {
  _$HomeArticlesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeArticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeArticlesStateDataImplCopyWith<$Res> {
  factory _$$HomeArticlesStateDataImplCopyWith(
          _$HomeArticlesStateDataImpl value,
          $Res Function(_$HomeArticlesStateDataImpl) then) =
      __$$HomeArticlesStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArticleModel> articles});
}

/// @nodoc
class __$$HomeArticlesStateDataImplCopyWithImpl<$Res>
    extends _$HomeArticlesStateCopyWithImpl<$Res, _$HomeArticlesStateDataImpl>
    implements _$$HomeArticlesStateDataImplCopyWith<$Res> {
  __$$HomeArticlesStateDataImplCopyWithImpl(_$HomeArticlesStateDataImpl _value,
      $Res Function(_$HomeArticlesStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeArticlesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$HomeArticlesStateDataImpl(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc

class _$HomeArticlesStateDataImpl extends HomeArticlesStateData {
  const _$HomeArticlesStateDataImpl(
      {required final List<ArticleModel> articles})
      : _articles = articles,
        super._();

  final List<ArticleModel> _articles;
  @override
  List<ArticleModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'HomeArticlesState.data(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeArticlesStateDataImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  /// Create a copy of HomeArticlesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeArticlesStateDataImplCopyWith<_$HomeArticlesStateDataImpl>
      get copyWith => __$$HomeArticlesStateDataImplCopyWithImpl<
          _$HomeArticlesStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> articles) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return data(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> articles)? data,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return data?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> articles)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeArticlesStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HomeArticlesStateData extends HomeArticlesState {
  const factory HomeArticlesStateData(
          {required final List<ArticleModel> articles}) =
      _$HomeArticlesStateDataImpl;
  const HomeArticlesStateData._() : super._();

  List<ArticleModel> get articles;

  /// Create a copy of HomeArticlesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeArticlesStateDataImplCopyWith<_$HomeArticlesStateDataImpl>
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
    extends _$HomeArticlesStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeArticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'HomeArticlesState.empty()';
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
    required TResult Function(List<ArticleModel> articles) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> articles)? data,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> articles)? data,
    TResult Function()? empty,
    TResult Function()? loading,
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
    required TResult Function(HomeArticlesStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends HomeArticlesState {
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
    extends _$HomeArticlesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeArticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'HomeArticlesState.loading()';
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
    required TResult Function(List<ArticleModel> articles) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> articles)? data,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> articles)? data,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? error,
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
    required TResult Function(HomeArticlesStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends HomeArticlesState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeArticlesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeArticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl() : super._();

  @override
  String toString() {
    return 'HomeArticlesState.error()';
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
    required TResult Function(List<ArticleModel> articles) data,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> articles)? data,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> articles)? data,
    TResult Function()? empty,
    TResult Function()? loading,
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
    required TResult Function(HomeArticlesStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesStateData value)? data,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends HomeArticlesState {
  const factory _Error() = _$ErrorImpl;
  const _Error._() : super._();
}

/// @nodoc
mixin _$HomeArticlesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(SectionModel section) getArticlesBySection,
    required TResult Function(List<ArticleModel> articles) updateArticles,
    required TResult Function(String? searchValue) searchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(SectionModel section)? getArticlesBySection,
    TResult? Function(List<ArticleModel> articles)? updateArticles,
    TResult? Function(String? searchValue)? searchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(SectionModel section)? getArticlesBySection,
    TResult Function(List<ArticleModel> articles)? updateArticles,
    TResult Function(String? searchValue)? searchArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeArticlesEventInit value) init,
    required TResult Function(HomeArticlesEventRetry value) retry,
    required TResult Function(HomeArticlesEventGetArticlesBySection value)
        getArticlesBySection,
    required TResult Function(HomeArticlesEventUpdateArticles value)
        updateArticles,
    required TResult Function(HomeArticlesEventSearchArticles value)
        searchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesEventInit value)? init,
    TResult? Function(HomeArticlesEventRetry value)? retry,
    TResult? Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult? Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult? Function(HomeArticlesEventSearchArticles value)? searchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesEventInit value)? init,
    TResult Function(HomeArticlesEventRetry value)? retry,
    TResult Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult Function(HomeArticlesEventSearchArticles value)? searchArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeArticlesEventCopyWith<$Res> {
  factory $HomeArticlesEventCopyWith(
          HomeArticlesEvent value, $Res Function(HomeArticlesEvent) then) =
      _$HomeArticlesEventCopyWithImpl<$Res, HomeArticlesEvent>;
}

/// @nodoc
class _$HomeArticlesEventCopyWithImpl<$Res, $Val extends HomeArticlesEvent>
    implements $HomeArticlesEventCopyWith<$Res> {
  _$HomeArticlesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeArticlesEventInitImplCopyWith<$Res> {
  factory _$$HomeArticlesEventInitImplCopyWith(
          _$HomeArticlesEventInitImpl value,
          $Res Function(_$HomeArticlesEventInitImpl) then) =
      __$$HomeArticlesEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeArticlesEventInitImplCopyWithImpl<$Res>
    extends _$HomeArticlesEventCopyWithImpl<$Res, _$HomeArticlesEventInitImpl>
    implements _$$HomeArticlesEventInitImplCopyWith<$Res> {
  __$$HomeArticlesEventInitImplCopyWithImpl(_$HomeArticlesEventInitImpl _value,
      $Res Function(_$HomeArticlesEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeArticlesEventInitImpl implements HomeArticlesEventInit {
  const _$HomeArticlesEventInitImpl();

  @override
  String toString() {
    return 'HomeArticlesEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeArticlesEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(SectionModel section) getArticlesBySection,
    required TResult Function(List<ArticleModel> articles) updateArticles,
    required TResult Function(String? searchValue) searchArticles,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(SectionModel section)? getArticlesBySection,
    TResult? Function(List<ArticleModel> articles)? updateArticles,
    TResult? Function(String? searchValue)? searchArticles,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(SectionModel section)? getArticlesBySection,
    TResult Function(List<ArticleModel> articles)? updateArticles,
    TResult Function(String? searchValue)? searchArticles,
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
    required TResult Function(HomeArticlesEventInit value) init,
    required TResult Function(HomeArticlesEventRetry value) retry,
    required TResult Function(HomeArticlesEventGetArticlesBySection value)
        getArticlesBySection,
    required TResult Function(HomeArticlesEventUpdateArticles value)
        updateArticles,
    required TResult Function(HomeArticlesEventSearchArticles value)
        searchArticles,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesEventInit value)? init,
    TResult? Function(HomeArticlesEventRetry value)? retry,
    TResult? Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult? Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult? Function(HomeArticlesEventSearchArticles value)? searchArticles,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesEventInit value)? init,
    TResult Function(HomeArticlesEventRetry value)? retry,
    TResult Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult Function(HomeArticlesEventSearchArticles value)? searchArticles,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class HomeArticlesEventInit implements HomeArticlesEvent {
  const factory HomeArticlesEventInit() = _$HomeArticlesEventInitImpl;
}

/// @nodoc
abstract class _$$HomeArticlesEventRetryImplCopyWith<$Res> {
  factory _$$HomeArticlesEventRetryImplCopyWith(
          _$HomeArticlesEventRetryImpl value,
          $Res Function(_$HomeArticlesEventRetryImpl) then) =
      __$$HomeArticlesEventRetryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeArticlesEventRetryImplCopyWithImpl<$Res>
    extends _$HomeArticlesEventCopyWithImpl<$Res, _$HomeArticlesEventRetryImpl>
    implements _$$HomeArticlesEventRetryImplCopyWith<$Res> {
  __$$HomeArticlesEventRetryImplCopyWithImpl(
      _$HomeArticlesEventRetryImpl _value,
      $Res Function(_$HomeArticlesEventRetryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeArticlesEventRetryImpl implements HomeArticlesEventRetry {
  const _$HomeArticlesEventRetryImpl();

  @override
  String toString() {
    return 'HomeArticlesEvent.retry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeArticlesEventRetryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(SectionModel section) getArticlesBySection,
    required TResult Function(List<ArticleModel> articles) updateArticles,
    required TResult Function(String? searchValue) searchArticles,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(SectionModel section)? getArticlesBySection,
    TResult? Function(List<ArticleModel> articles)? updateArticles,
    TResult? Function(String? searchValue)? searchArticles,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(SectionModel section)? getArticlesBySection,
    TResult Function(List<ArticleModel> articles)? updateArticles,
    TResult Function(String? searchValue)? searchArticles,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeArticlesEventInit value) init,
    required TResult Function(HomeArticlesEventRetry value) retry,
    required TResult Function(HomeArticlesEventGetArticlesBySection value)
        getArticlesBySection,
    required TResult Function(HomeArticlesEventUpdateArticles value)
        updateArticles,
    required TResult Function(HomeArticlesEventSearchArticles value)
        searchArticles,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesEventInit value)? init,
    TResult? Function(HomeArticlesEventRetry value)? retry,
    TResult? Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult? Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult? Function(HomeArticlesEventSearchArticles value)? searchArticles,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesEventInit value)? init,
    TResult Function(HomeArticlesEventRetry value)? retry,
    TResult Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult Function(HomeArticlesEventSearchArticles value)? searchArticles,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class HomeArticlesEventRetry implements HomeArticlesEvent {
  const factory HomeArticlesEventRetry() = _$HomeArticlesEventRetryImpl;
}

/// @nodoc
abstract class _$$HomeArticlesEventGetArticlesBySectionImplCopyWith<$Res> {
  factory _$$HomeArticlesEventGetArticlesBySectionImplCopyWith(
          _$HomeArticlesEventGetArticlesBySectionImpl value,
          $Res Function(_$HomeArticlesEventGetArticlesBySectionImpl) then) =
      __$$HomeArticlesEventGetArticlesBySectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SectionModel section});

  $SectionModelCopyWith<$Res> get section;
}

/// @nodoc
class __$$HomeArticlesEventGetArticlesBySectionImplCopyWithImpl<$Res>
    extends _$HomeArticlesEventCopyWithImpl<$Res,
        _$HomeArticlesEventGetArticlesBySectionImpl>
    implements _$$HomeArticlesEventGetArticlesBySectionImplCopyWith<$Res> {
  __$$HomeArticlesEventGetArticlesBySectionImplCopyWithImpl(
      _$HomeArticlesEventGetArticlesBySectionImpl _value,
      $Res Function(_$HomeArticlesEventGetArticlesBySectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
  }) {
    return _then(_$HomeArticlesEventGetArticlesBySectionImpl(
      null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as SectionModel,
    ));
  }

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionModelCopyWith<$Res> get section {
    return $SectionModelCopyWith<$Res>(_value.section, (value) {
      return _then(_value.copyWith(section: value));
    });
  }
}

/// @nodoc

class _$HomeArticlesEventGetArticlesBySectionImpl
    implements HomeArticlesEventGetArticlesBySection {
  const _$HomeArticlesEventGetArticlesBySectionImpl(this.section);

  @override
  final SectionModel section;

  @override
  String toString() {
    return 'HomeArticlesEvent.getArticlesBySection(section: $section)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeArticlesEventGetArticlesBySectionImpl &&
            (identical(other.section, section) || other.section == section));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section);

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeArticlesEventGetArticlesBySectionImplCopyWith<
          _$HomeArticlesEventGetArticlesBySectionImpl>
      get copyWith => __$$HomeArticlesEventGetArticlesBySectionImplCopyWithImpl<
          _$HomeArticlesEventGetArticlesBySectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(SectionModel section) getArticlesBySection,
    required TResult Function(List<ArticleModel> articles) updateArticles,
    required TResult Function(String? searchValue) searchArticles,
  }) {
    return getArticlesBySection(section);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(SectionModel section)? getArticlesBySection,
    TResult? Function(List<ArticleModel> articles)? updateArticles,
    TResult? Function(String? searchValue)? searchArticles,
  }) {
    return getArticlesBySection?.call(section);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(SectionModel section)? getArticlesBySection,
    TResult Function(List<ArticleModel> articles)? updateArticles,
    TResult Function(String? searchValue)? searchArticles,
    required TResult orElse(),
  }) {
    if (getArticlesBySection != null) {
      return getArticlesBySection(section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeArticlesEventInit value) init,
    required TResult Function(HomeArticlesEventRetry value) retry,
    required TResult Function(HomeArticlesEventGetArticlesBySection value)
        getArticlesBySection,
    required TResult Function(HomeArticlesEventUpdateArticles value)
        updateArticles,
    required TResult Function(HomeArticlesEventSearchArticles value)
        searchArticles,
  }) {
    return getArticlesBySection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesEventInit value)? init,
    TResult? Function(HomeArticlesEventRetry value)? retry,
    TResult? Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult? Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult? Function(HomeArticlesEventSearchArticles value)? searchArticles,
  }) {
    return getArticlesBySection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesEventInit value)? init,
    TResult Function(HomeArticlesEventRetry value)? retry,
    TResult Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult Function(HomeArticlesEventSearchArticles value)? searchArticles,
    required TResult orElse(),
  }) {
    if (getArticlesBySection != null) {
      return getArticlesBySection(this);
    }
    return orElse();
  }
}

abstract class HomeArticlesEventGetArticlesBySection
    implements HomeArticlesEvent {
  const factory HomeArticlesEventGetArticlesBySection(
      final SectionModel section) = _$HomeArticlesEventGetArticlesBySectionImpl;

  SectionModel get section;

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeArticlesEventGetArticlesBySectionImplCopyWith<
          _$HomeArticlesEventGetArticlesBySectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeArticlesEventUpdateArticlesImplCopyWith<$Res> {
  factory _$$HomeArticlesEventUpdateArticlesImplCopyWith(
          _$HomeArticlesEventUpdateArticlesImpl value,
          $Res Function(_$HomeArticlesEventUpdateArticlesImpl) then) =
      __$$HomeArticlesEventUpdateArticlesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArticleModel> articles});
}

/// @nodoc
class __$$HomeArticlesEventUpdateArticlesImplCopyWithImpl<$Res>
    extends _$HomeArticlesEventCopyWithImpl<$Res,
        _$HomeArticlesEventUpdateArticlesImpl>
    implements _$$HomeArticlesEventUpdateArticlesImplCopyWith<$Res> {
  __$$HomeArticlesEventUpdateArticlesImplCopyWithImpl(
      _$HomeArticlesEventUpdateArticlesImpl _value,
      $Res Function(_$HomeArticlesEventUpdateArticlesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$HomeArticlesEventUpdateArticlesImpl(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc

class _$HomeArticlesEventUpdateArticlesImpl
    implements HomeArticlesEventUpdateArticles {
  const _$HomeArticlesEventUpdateArticlesImpl(final List<ArticleModel> articles)
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
    return 'HomeArticlesEvent.updateArticles(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeArticlesEventUpdateArticlesImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeArticlesEventUpdateArticlesImplCopyWith<
          _$HomeArticlesEventUpdateArticlesImpl>
      get copyWith => __$$HomeArticlesEventUpdateArticlesImplCopyWithImpl<
          _$HomeArticlesEventUpdateArticlesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(SectionModel section) getArticlesBySection,
    required TResult Function(List<ArticleModel> articles) updateArticles,
    required TResult Function(String? searchValue) searchArticles,
  }) {
    return updateArticles(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(SectionModel section)? getArticlesBySection,
    TResult? Function(List<ArticleModel> articles)? updateArticles,
    TResult? Function(String? searchValue)? searchArticles,
  }) {
    return updateArticles?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(SectionModel section)? getArticlesBySection,
    TResult Function(List<ArticleModel> articles)? updateArticles,
    TResult Function(String? searchValue)? searchArticles,
    required TResult orElse(),
  }) {
    if (updateArticles != null) {
      return updateArticles(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeArticlesEventInit value) init,
    required TResult Function(HomeArticlesEventRetry value) retry,
    required TResult Function(HomeArticlesEventGetArticlesBySection value)
        getArticlesBySection,
    required TResult Function(HomeArticlesEventUpdateArticles value)
        updateArticles,
    required TResult Function(HomeArticlesEventSearchArticles value)
        searchArticles,
  }) {
    return updateArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesEventInit value)? init,
    TResult? Function(HomeArticlesEventRetry value)? retry,
    TResult? Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult? Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult? Function(HomeArticlesEventSearchArticles value)? searchArticles,
  }) {
    return updateArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesEventInit value)? init,
    TResult Function(HomeArticlesEventRetry value)? retry,
    TResult Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult Function(HomeArticlesEventSearchArticles value)? searchArticles,
    required TResult orElse(),
  }) {
    if (updateArticles != null) {
      return updateArticles(this);
    }
    return orElse();
  }
}

abstract class HomeArticlesEventUpdateArticles implements HomeArticlesEvent {
  const factory HomeArticlesEventUpdateArticles(
          final List<ArticleModel> articles) =
      _$HomeArticlesEventUpdateArticlesImpl;

  List<ArticleModel> get articles;

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeArticlesEventUpdateArticlesImplCopyWith<
          _$HomeArticlesEventUpdateArticlesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeArticlesEventSearchArticlesImplCopyWith<$Res> {
  factory _$$HomeArticlesEventSearchArticlesImplCopyWith(
          _$HomeArticlesEventSearchArticlesImpl value,
          $Res Function(_$HomeArticlesEventSearchArticlesImpl) then) =
      __$$HomeArticlesEventSearchArticlesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchValue});
}

/// @nodoc
class __$$HomeArticlesEventSearchArticlesImplCopyWithImpl<$Res>
    extends _$HomeArticlesEventCopyWithImpl<$Res,
        _$HomeArticlesEventSearchArticlesImpl>
    implements _$$HomeArticlesEventSearchArticlesImplCopyWith<$Res> {
  __$$HomeArticlesEventSearchArticlesImplCopyWithImpl(
      _$HomeArticlesEventSearchArticlesImpl _value,
      $Res Function(_$HomeArticlesEventSearchArticlesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = freezed,
  }) {
    return _then(_$HomeArticlesEventSearchArticlesImpl(
      freezed == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeArticlesEventSearchArticlesImpl
    implements HomeArticlesEventSearchArticles {
  const _$HomeArticlesEventSearchArticlesImpl(this.searchValue);

  @override
  final String? searchValue;

  @override
  String toString() {
    return 'HomeArticlesEvent.searchArticles(searchValue: $searchValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeArticlesEventSearchArticlesImpl &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchValue);

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeArticlesEventSearchArticlesImplCopyWith<
          _$HomeArticlesEventSearchArticlesImpl>
      get copyWith => __$$HomeArticlesEventSearchArticlesImplCopyWithImpl<
          _$HomeArticlesEventSearchArticlesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(SectionModel section) getArticlesBySection,
    required TResult Function(List<ArticleModel> articles) updateArticles,
    required TResult Function(String? searchValue) searchArticles,
  }) {
    return searchArticles(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(SectionModel section)? getArticlesBySection,
    TResult? Function(List<ArticleModel> articles)? updateArticles,
    TResult? Function(String? searchValue)? searchArticles,
  }) {
    return searchArticles?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(SectionModel section)? getArticlesBySection,
    TResult Function(List<ArticleModel> articles)? updateArticles,
    TResult Function(String? searchValue)? searchArticles,
    required TResult orElse(),
  }) {
    if (searchArticles != null) {
      return searchArticles(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeArticlesEventInit value) init,
    required TResult Function(HomeArticlesEventRetry value) retry,
    required TResult Function(HomeArticlesEventGetArticlesBySection value)
        getArticlesBySection,
    required TResult Function(HomeArticlesEventUpdateArticles value)
        updateArticles,
    required TResult Function(HomeArticlesEventSearchArticles value)
        searchArticles,
  }) {
    return searchArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeArticlesEventInit value)? init,
    TResult? Function(HomeArticlesEventRetry value)? retry,
    TResult? Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult? Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult? Function(HomeArticlesEventSearchArticles value)? searchArticles,
  }) {
    return searchArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeArticlesEventInit value)? init,
    TResult Function(HomeArticlesEventRetry value)? retry,
    TResult Function(HomeArticlesEventGetArticlesBySection value)?
        getArticlesBySection,
    TResult Function(HomeArticlesEventUpdateArticles value)? updateArticles,
    TResult Function(HomeArticlesEventSearchArticles value)? searchArticles,
    required TResult orElse(),
  }) {
    if (searchArticles != null) {
      return searchArticles(this);
    }
    return orElse();
  }
}

abstract class HomeArticlesEventSearchArticles implements HomeArticlesEvent {
  const factory HomeArticlesEventSearchArticles(final String? searchValue) =
      _$HomeArticlesEventSearchArticlesImpl;

  String? get searchValue;

  /// Create a copy of HomeArticlesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeArticlesEventSearchArticlesImplCopyWith<
          _$HomeArticlesEventSearchArticlesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
