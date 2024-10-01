// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmarks_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarksState {
  List<ArticleModel> get bookmarks => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> bookmarks) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> bookmarks)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> bookmarks)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarksStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarksStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarksStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BookmarksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarksStateCopyWith<BookmarksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksStateCopyWith<$Res> {
  factory $BookmarksStateCopyWith(
          BookmarksState value, $Res Function(BookmarksState) then) =
      _$BookmarksStateCopyWithImpl<$Res, BookmarksState>;
  @useResult
  $Res call({List<ArticleModel> bookmarks});
}

/// @nodoc
class _$BookmarksStateCopyWithImpl<$Res, $Val extends BookmarksState>
    implements $BookmarksStateCopyWith<$Res> {
  _$BookmarksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarks = null,
  }) {
    return _then(_value.copyWith(
      bookmarks: null == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarksStateDataImplCopyWith<$Res>
    implements $BookmarksStateCopyWith<$Res> {
  factory _$$BookmarksStateDataImplCopyWith(_$BookmarksStateDataImpl value,
          $Res Function(_$BookmarksStateDataImpl) then) =
      __$$BookmarksStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ArticleModel> bookmarks});
}

/// @nodoc
class __$$BookmarksStateDataImplCopyWithImpl<$Res>
    extends _$BookmarksStateCopyWithImpl<$Res, _$BookmarksStateDataImpl>
    implements _$$BookmarksStateDataImplCopyWith<$Res> {
  __$$BookmarksStateDataImplCopyWithImpl(_$BookmarksStateDataImpl _value,
      $Res Function(_$BookmarksStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarks = null,
  }) {
    return _then(_$BookmarksStateDataImpl(
      bookmarks: null == bookmarks
          ? _value._bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc

class _$BookmarksStateDataImpl extends BookmarksStateData {
  const _$BookmarksStateDataImpl({required final List<ArticleModel> bookmarks})
      : _bookmarks = bookmarks,
        super._();

  final List<ArticleModel> _bookmarks;
  @override
  List<ArticleModel> get bookmarks {
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarks);
  }

  @override
  String toString() {
    return 'BookmarksState.data(bookmarks: $bookmarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksStateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._bookmarks, _bookmarks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookmarks));

  /// Create a copy of BookmarksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksStateDataImplCopyWith<_$BookmarksStateDataImpl> get copyWith =>
      __$$BookmarksStateDataImplCopyWithImpl<_$BookmarksStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArticleModel> bookmarks) data,
  }) {
    return data(bookmarks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArticleModel> bookmarks)? data,
  }) {
    return data?.call(bookmarks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArticleModel> bookmarks)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(bookmarks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarksStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarksStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarksStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class BookmarksStateData extends BookmarksState {
  const factory BookmarksStateData(
      {required final List<ArticleModel> bookmarks}) = _$BookmarksStateDataImpl;
  const BookmarksStateData._() : super._();

  @override
  List<ArticleModel> get bookmarks;

  /// Create a copy of BookmarksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarksStateDataImplCopyWith<_$BookmarksStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookmarksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ArticleModel> bookmarks) updateBookmarks,
    required TResult Function(ArticleModel bookmark) removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ArticleModel> bookmarks)? updateBookmarks,
    TResult? Function(ArticleModel bookmark)? removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ArticleModel> bookmarks)? updateBookmarks,
    TResult Function(ArticleModel bookmark)? removeBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarksEventInit value) init,
    required TResult Function(BookmarksEventUpdateBookmarks value)
        updateBookmarks,
    required TResult Function(BookmarksEventRemoveBookmark value)
        removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarksEventInit value)? init,
    TResult? Function(BookmarksEventUpdateBookmarks value)? updateBookmarks,
    TResult? Function(BookmarksEventRemoveBookmark value)? removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarksEventInit value)? init,
    TResult Function(BookmarksEventUpdateBookmarks value)? updateBookmarks,
    TResult Function(BookmarksEventRemoveBookmark value)? removeBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksEventCopyWith<$Res> {
  factory $BookmarksEventCopyWith(
          BookmarksEvent value, $Res Function(BookmarksEvent) then) =
      _$BookmarksEventCopyWithImpl<$Res, BookmarksEvent>;
}

/// @nodoc
class _$BookmarksEventCopyWithImpl<$Res, $Val extends BookmarksEvent>
    implements $BookmarksEventCopyWith<$Res> {
  _$BookmarksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookmarksEventInitImplCopyWith<$Res> {
  factory _$$BookmarksEventInitImplCopyWith(_$BookmarksEventInitImpl value,
          $Res Function(_$BookmarksEventInitImpl) then) =
      __$$BookmarksEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarksEventInitImplCopyWithImpl<$Res>
    extends _$BookmarksEventCopyWithImpl<$Res, _$BookmarksEventInitImpl>
    implements _$$BookmarksEventInitImplCopyWith<$Res> {
  __$$BookmarksEventInitImplCopyWithImpl(_$BookmarksEventInitImpl _value,
      $Res Function(_$BookmarksEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookmarksEventInitImpl implements BookmarksEventInit {
  const _$BookmarksEventInitImpl();

  @override
  String toString() {
    return 'BookmarksEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookmarksEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ArticleModel> bookmarks) updateBookmarks,
    required TResult Function(ArticleModel bookmark) removeBookmark,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ArticleModel> bookmarks)? updateBookmarks,
    TResult? Function(ArticleModel bookmark)? removeBookmark,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ArticleModel> bookmarks)? updateBookmarks,
    TResult Function(ArticleModel bookmark)? removeBookmark,
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
    required TResult Function(BookmarksEventInit value) init,
    required TResult Function(BookmarksEventUpdateBookmarks value)
        updateBookmarks,
    required TResult Function(BookmarksEventRemoveBookmark value)
        removeBookmark,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarksEventInit value)? init,
    TResult? Function(BookmarksEventUpdateBookmarks value)? updateBookmarks,
    TResult? Function(BookmarksEventRemoveBookmark value)? removeBookmark,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarksEventInit value)? init,
    TResult Function(BookmarksEventUpdateBookmarks value)? updateBookmarks,
    TResult Function(BookmarksEventRemoveBookmark value)? removeBookmark,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class BookmarksEventInit implements BookmarksEvent {
  const factory BookmarksEventInit() = _$BookmarksEventInitImpl;
}

/// @nodoc
abstract class _$$BookmarksEventUpdateBookmarksImplCopyWith<$Res> {
  factory _$$BookmarksEventUpdateBookmarksImplCopyWith(
          _$BookmarksEventUpdateBookmarksImpl value,
          $Res Function(_$BookmarksEventUpdateBookmarksImpl) then) =
      __$$BookmarksEventUpdateBookmarksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArticleModel> bookmarks});
}

/// @nodoc
class __$$BookmarksEventUpdateBookmarksImplCopyWithImpl<$Res>
    extends _$BookmarksEventCopyWithImpl<$Res,
        _$BookmarksEventUpdateBookmarksImpl>
    implements _$$BookmarksEventUpdateBookmarksImplCopyWith<$Res> {
  __$$BookmarksEventUpdateBookmarksImplCopyWithImpl(
      _$BookmarksEventUpdateBookmarksImpl _value,
      $Res Function(_$BookmarksEventUpdateBookmarksImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarks = null,
  }) {
    return _then(_$BookmarksEventUpdateBookmarksImpl(
      null == bookmarks
          ? _value._bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc

class _$BookmarksEventUpdateBookmarksImpl
    implements BookmarksEventUpdateBookmarks {
  const _$BookmarksEventUpdateBookmarksImpl(final List<ArticleModel> bookmarks)
      : _bookmarks = bookmarks;

  final List<ArticleModel> _bookmarks;
  @override
  List<ArticleModel> get bookmarks {
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarks);
  }

  @override
  String toString() {
    return 'BookmarksEvent.updateBookmarks(bookmarks: $bookmarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksEventUpdateBookmarksImpl &&
            const DeepCollectionEquality()
                .equals(other._bookmarks, _bookmarks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookmarks));

  /// Create a copy of BookmarksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksEventUpdateBookmarksImplCopyWith<
          _$BookmarksEventUpdateBookmarksImpl>
      get copyWith => __$$BookmarksEventUpdateBookmarksImplCopyWithImpl<
          _$BookmarksEventUpdateBookmarksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ArticleModel> bookmarks) updateBookmarks,
    required TResult Function(ArticleModel bookmark) removeBookmark,
  }) {
    return updateBookmarks(bookmarks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ArticleModel> bookmarks)? updateBookmarks,
    TResult? Function(ArticleModel bookmark)? removeBookmark,
  }) {
    return updateBookmarks?.call(bookmarks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ArticleModel> bookmarks)? updateBookmarks,
    TResult Function(ArticleModel bookmark)? removeBookmark,
    required TResult orElse(),
  }) {
    if (updateBookmarks != null) {
      return updateBookmarks(bookmarks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarksEventInit value) init,
    required TResult Function(BookmarksEventUpdateBookmarks value)
        updateBookmarks,
    required TResult Function(BookmarksEventRemoveBookmark value)
        removeBookmark,
  }) {
    return updateBookmarks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarksEventInit value)? init,
    TResult? Function(BookmarksEventUpdateBookmarks value)? updateBookmarks,
    TResult? Function(BookmarksEventRemoveBookmark value)? removeBookmark,
  }) {
    return updateBookmarks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarksEventInit value)? init,
    TResult Function(BookmarksEventUpdateBookmarks value)? updateBookmarks,
    TResult Function(BookmarksEventRemoveBookmark value)? removeBookmark,
    required TResult orElse(),
  }) {
    if (updateBookmarks != null) {
      return updateBookmarks(this);
    }
    return orElse();
  }
}

abstract class BookmarksEventUpdateBookmarks implements BookmarksEvent {
  const factory BookmarksEventUpdateBookmarks(
      final List<ArticleModel> bookmarks) = _$BookmarksEventUpdateBookmarksImpl;

  List<ArticleModel> get bookmarks;

  /// Create a copy of BookmarksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarksEventUpdateBookmarksImplCopyWith<
          _$BookmarksEventUpdateBookmarksImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarksEventRemoveBookmarkImplCopyWith<$Res> {
  factory _$$BookmarksEventRemoveBookmarkImplCopyWith(
          _$BookmarksEventRemoveBookmarkImpl value,
          $Res Function(_$BookmarksEventRemoveBookmarkImpl) then) =
      __$$BookmarksEventRemoveBookmarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArticleModel bookmark});

  $ArticleModelCopyWith<$Res> get bookmark;
}

/// @nodoc
class __$$BookmarksEventRemoveBookmarkImplCopyWithImpl<$Res>
    extends _$BookmarksEventCopyWithImpl<$Res,
        _$BookmarksEventRemoveBookmarkImpl>
    implements _$$BookmarksEventRemoveBookmarkImplCopyWith<$Res> {
  __$$BookmarksEventRemoveBookmarkImplCopyWithImpl(
      _$BookmarksEventRemoveBookmarkImpl _value,
      $Res Function(_$BookmarksEventRemoveBookmarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmark = null,
  }) {
    return _then(_$BookmarksEventRemoveBookmarkImpl(
      null == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
    ));
  }

  /// Create a copy of BookmarksEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleModelCopyWith<$Res> get bookmark {
    return $ArticleModelCopyWith<$Res>(_value.bookmark, (value) {
      return _then(_value.copyWith(bookmark: value));
    });
  }
}

/// @nodoc

class _$BookmarksEventRemoveBookmarkImpl
    implements BookmarksEventRemoveBookmark {
  const _$BookmarksEventRemoveBookmarkImpl(this.bookmark);

  @override
  final ArticleModel bookmark;

  @override
  String toString() {
    return 'BookmarksEvent.removeBookmark(bookmark: $bookmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksEventRemoveBookmarkImpl &&
            (identical(other.bookmark, bookmark) ||
                other.bookmark == bookmark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookmark);

  /// Create a copy of BookmarksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksEventRemoveBookmarkImplCopyWith<
          _$BookmarksEventRemoveBookmarkImpl>
      get copyWith => __$$BookmarksEventRemoveBookmarkImplCopyWithImpl<
          _$BookmarksEventRemoveBookmarkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ArticleModel> bookmarks) updateBookmarks,
    required TResult Function(ArticleModel bookmark) removeBookmark,
  }) {
    return removeBookmark(bookmark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ArticleModel> bookmarks)? updateBookmarks,
    TResult? Function(ArticleModel bookmark)? removeBookmark,
  }) {
    return removeBookmark?.call(bookmark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ArticleModel> bookmarks)? updateBookmarks,
    TResult Function(ArticleModel bookmark)? removeBookmark,
    required TResult orElse(),
  }) {
    if (removeBookmark != null) {
      return removeBookmark(bookmark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarksEventInit value) init,
    required TResult Function(BookmarksEventUpdateBookmarks value)
        updateBookmarks,
    required TResult Function(BookmarksEventRemoveBookmark value)
        removeBookmark,
  }) {
    return removeBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarksEventInit value)? init,
    TResult? Function(BookmarksEventUpdateBookmarks value)? updateBookmarks,
    TResult? Function(BookmarksEventRemoveBookmark value)? removeBookmark,
  }) {
    return removeBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarksEventInit value)? init,
    TResult Function(BookmarksEventUpdateBookmarks value)? updateBookmarks,
    TResult Function(BookmarksEventRemoveBookmark value)? removeBookmark,
    required TResult orElse(),
  }) {
    if (removeBookmark != null) {
      return removeBookmark(this);
    }
    return orElse();
  }
}

abstract class BookmarksEventRemoveBookmark implements BookmarksEvent {
  const factory BookmarksEventRemoveBookmark(final ArticleModel bookmark) =
      _$BookmarksEventRemoveBookmarkImpl;

  ArticleModel get bookmark;

  /// Create a copy of BookmarksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarksEventRemoveBookmarkImplCopyWith<
          _$BookmarksEventRemoveBookmarkImpl>
      get copyWith => throw _privateConstructorUsedError;
}
