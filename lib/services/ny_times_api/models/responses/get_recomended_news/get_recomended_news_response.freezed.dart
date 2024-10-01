// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_recomended_news_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRecommendedNewsResponse _$GetRecommendedNewsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetRecommendedNewsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetRecommendedNewsResponse {
  String get status => throw _privateConstructorUsedError;
  String get copyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_results')
  int get numResults => throw _privateConstructorUsedError;
  List<ArticleModel> get results => throw _privateConstructorUsedError;

  /// Serializes this GetRecommendedNewsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetRecommendedNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetRecommendedNewsResponseCopyWith<GetRecommendedNewsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecommendedNewsResponseCopyWith<$Res> {
  factory $GetRecommendedNewsResponseCopyWith(GetRecommendedNewsResponse value,
          $Res Function(GetRecommendedNewsResponse) then) =
      _$GetRecommendedNewsResponseCopyWithImpl<$Res,
          GetRecommendedNewsResponse>;
  @useResult
  $Res call(
      {String status,
      String copyright,
      @JsonKey(name: 'num_results') int numResults,
      List<ArticleModel> results});
}

/// @nodoc
class _$GetRecommendedNewsResponseCopyWithImpl<$Res,
        $Val extends GetRecommendedNewsResponse>
    implements $GetRecommendedNewsResponseCopyWith<$Res> {
  _$GetRecommendedNewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetRecommendedNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? copyright = null,
    Object? numResults = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      numResults: null == numResults
          ? _value.numResults
          : numResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRecommendedNewsResponseImplCopyWith<$Res>
    implements $GetRecommendedNewsResponseCopyWith<$Res> {
  factory _$$GetRecommendedNewsResponseImplCopyWith(
          _$GetRecommendedNewsResponseImpl value,
          $Res Function(_$GetRecommendedNewsResponseImpl) then) =
      __$$GetRecommendedNewsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      String copyright,
      @JsonKey(name: 'num_results') int numResults,
      List<ArticleModel> results});
}

/// @nodoc
class __$$GetRecommendedNewsResponseImplCopyWithImpl<$Res>
    extends _$GetRecommendedNewsResponseCopyWithImpl<$Res,
        _$GetRecommendedNewsResponseImpl>
    implements _$$GetRecommendedNewsResponseImplCopyWith<$Res> {
  __$$GetRecommendedNewsResponseImplCopyWithImpl(
      _$GetRecommendedNewsResponseImpl _value,
      $Res Function(_$GetRecommendedNewsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetRecommendedNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? copyright = null,
    Object? numResults = null,
    Object? results = null,
  }) {
    return _then(_$GetRecommendedNewsResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      numResults: null == numResults
          ? _value.numResults
          : numResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRecommendedNewsResponseImpl implements _GetRecommendedNewsResponse {
  const _$GetRecommendedNewsResponseImpl(
      {required this.status,
      required this.copyright,
      @JsonKey(name: 'num_results') required this.numResults,
      required final List<ArticleModel> results})
      : _results = results;

  factory _$GetRecommendedNewsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetRecommendedNewsResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String copyright;
  @override
  @JsonKey(name: 'num_results')
  final int numResults;
  final List<ArticleModel> _results;
  @override
  List<ArticleModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GetRecommendedNewsResponse(status: $status, copyright: $copyright, numResults: $numResults, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecommendedNewsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.numResults, numResults) ||
                other.numResults == numResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, copyright, numResults,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of GetRecommendedNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecommendedNewsResponseImplCopyWith<_$GetRecommendedNewsResponseImpl>
      get copyWith => __$$GetRecommendedNewsResponseImplCopyWithImpl<
          _$GetRecommendedNewsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRecommendedNewsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetRecommendedNewsResponse
    implements GetRecommendedNewsResponse {
  const factory _GetRecommendedNewsResponse(
          {required final String status,
          required final String copyright,
          @JsonKey(name: 'num_results') required final int numResults,
          required final List<ArticleModel> results}) =
      _$GetRecommendedNewsResponseImpl;

  factory _GetRecommendedNewsResponse.fromJson(Map<String, dynamic> json) =
      _$GetRecommendedNewsResponseImpl.fromJson;

  @override
  String get status;
  @override
  String get copyright;
  @override
  @JsonKey(name: 'num_results')
  int get numResults;
  @override
  List<ArticleModel> get results;

  /// Create a copy of GetRecommendedNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRecommendedNewsResponseImplCopyWith<_$GetRecommendedNewsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
