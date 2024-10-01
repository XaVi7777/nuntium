// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_articles_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchArticlesResult {
  SectionModel get section => throw _privateConstructorUsedError;
  List<ArticleModel> get articles => throw _privateConstructorUsedError;
  bool get isUpdated => throw _privateConstructorUsedError;

  /// Create a copy of FetchArticlesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchArticlesResultCopyWith<FetchArticlesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchArticlesResultCopyWith<$Res> {
  factory $FetchArticlesResultCopyWith(
          FetchArticlesResult value, $Res Function(FetchArticlesResult) then) =
      _$FetchArticlesResultCopyWithImpl<$Res, FetchArticlesResult>;
  @useResult
  $Res call(
      {SectionModel section, List<ArticleModel> articles, bool isUpdated});

  $SectionModelCopyWith<$Res> get section;
}

/// @nodoc
class _$FetchArticlesResultCopyWithImpl<$Res, $Val extends FetchArticlesResult>
    implements $FetchArticlesResultCopyWith<$Res> {
  _$FetchArticlesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchArticlesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
    Object? articles = null,
    Object? isUpdated = null,
  }) {
    return _then(_value.copyWith(
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as SectionModel,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of FetchArticlesResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionModelCopyWith<$Res> get section {
    return $SectionModelCopyWith<$Res>(_value.section, (value) {
      return _then(_value.copyWith(section: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchArticlesResultImplCopyWith<$Res>
    implements $FetchArticlesResultCopyWith<$Res> {
  factory _$$FetchArticlesResultImplCopyWith(_$FetchArticlesResultImpl value,
          $Res Function(_$FetchArticlesResultImpl) then) =
      __$$FetchArticlesResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SectionModel section, List<ArticleModel> articles, bool isUpdated});

  @override
  $SectionModelCopyWith<$Res> get section;
}

/// @nodoc
class __$$FetchArticlesResultImplCopyWithImpl<$Res>
    extends _$FetchArticlesResultCopyWithImpl<$Res, _$FetchArticlesResultImpl>
    implements _$$FetchArticlesResultImplCopyWith<$Res> {
  __$$FetchArticlesResultImplCopyWithImpl(_$FetchArticlesResultImpl _value,
      $Res Function(_$FetchArticlesResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchArticlesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
    Object? articles = null,
    Object? isUpdated = null,
  }) {
    return _then(_$FetchArticlesResultImpl(
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as SectionModel,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchArticlesResultImpl implements _FetchArticlesResult {
  const _$FetchArticlesResultImpl(
      {required this.section,
      required final List<ArticleModel> articles,
      this.isUpdated = false})
      : _articles = articles;

  @override
  final SectionModel section;
  final List<ArticleModel> _articles;
  @override
  List<ArticleModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  @JsonKey()
  final bool isUpdated;

  @override
  String toString() {
    return 'FetchArticlesResult(section: $section, articles: $articles, isUpdated: $isUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchArticlesResultImpl &&
            (identical(other.section, section) || other.section == section) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section,
      const DeepCollectionEquality().hash(_articles), isUpdated);

  /// Create a copy of FetchArticlesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchArticlesResultImplCopyWith<_$FetchArticlesResultImpl> get copyWith =>
      __$$FetchArticlesResultImplCopyWithImpl<_$FetchArticlesResultImpl>(
          this, _$identity);
}

abstract class _FetchArticlesResult implements FetchArticlesResult {
  const factory _FetchArticlesResult(
      {required final SectionModel section,
      required final List<ArticleModel> articles,
      final bool isUpdated}) = _$FetchArticlesResultImpl;

  @override
  SectionModel get section;
  @override
  List<ArticleModel> get articles;
  @override
  bool get isUpdated;

  /// Create a copy of FetchArticlesResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchArticlesResultImplCopyWith<_$FetchArticlesResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
