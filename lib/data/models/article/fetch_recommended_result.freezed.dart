// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_recommended_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchRecommendedResult {
  int get period => throw _privateConstructorUsedError;
  List<ArticleModel> get articles => throw _privateConstructorUsedError;
  bool get isUpdated => throw _privateConstructorUsedError;

  /// Create a copy of FetchRecommendedResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchRecommendedResultCopyWith<FetchRecommendedResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchRecommendedResultCopyWith<$Res> {
  factory $FetchRecommendedResultCopyWith(FetchRecommendedResult value,
          $Res Function(FetchRecommendedResult) then) =
      _$FetchRecommendedResultCopyWithImpl<$Res, FetchRecommendedResult>;
  @useResult
  $Res call({int period, List<ArticleModel> articles, bool isUpdated});
}

/// @nodoc
class _$FetchRecommendedResultCopyWithImpl<$Res,
        $Val extends FetchRecommendedResult>
    implements $FetchRecommendedResultCopyWith<$Res> {
  _$FetchRecommendedResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchRecommendedResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? articles = null,
    Object? isUpdated = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
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
}

/// @nodoc
abstract class _$$FetchRecommendedResultImplCopyWith<$Res>
    implements $FetchRecommendedResultCopyWith<$Res> {
  factory _$$FetchRecommendedResultImplCopyWith(
          _$FetchRecommendedResultImpl value,
          $Res Function(_$FetchRecommendedResultImpl) then) =
      __$$FetchRecommendedResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int period, List<ArticleModel> articles, bool isUpdated});
}

/// @nodoc
class __$$FetchRecommendedResultImplCopyWithImpl<$Res>
    extends _$FetchRecommendedResultCopyWithImpl<$Res,
        _$FetchRecommendedResultImpl>
    implements _$$FetchRecommendedResultImplCopyWith<$Res> {
  __$$FetchRecommendedResultImplCopyWithImpl(
      _$FetchRecommendedResultImpl _value,
      $Res Function(_$FetchRecommendedResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchRecommendedResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? articles = null,
    Object? isUpdated = null,
  }) {
    return _then(_$FetchRecommendedResultImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$FetchRecommendedResultImpl implements _FetchRecommendedResult {
  const _$FetchRecommendedResultImpl(
      {required this.period,
      required final List<ArticleModel> articles,
      this.isUpdated = false})
      : _articles = articles;

  @override
  final int period;
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
    return 'FetchRecommendedResult(period: $period, articles: $articles, isUpdated: $isUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecommendedResultImpl &&
            (identical(other.period, period) || other.period == period) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, period,
      const DeepCollectionEquality().hash(_articles), isUpdated);

  /// Create a copy of FetchRecommendedResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRecommendedResultImplCopyWith<_$FetchRecommendedResultImpl>
      get copyWith => __$$FetchRecommendedResultImplCopyWithImpl<
          _$FetchRecommendedResultImpl>(this, _$identity);
}

abstract class _FetchRecommendedResult implements FetchRecommendedResult {
  const factory _FetchRecommendedResult(
      {required final int period,
      required final List<ArticleModel> articles,
      final bool isUpdated}) = _$FetchRecommendedResultImpl;

  @override
  int get period;
  @override
  List<ArticleModel> get articles;
  @override
  bool get isUpdated;

  /// Create a copy of FetchRecommendedResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchRecommendedResultImplCopyWith<_$FetchRecommendedResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
