// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_news_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetNewsResponse _$GetNewsResponseFromJson(Map<String, dynamic> json) {
  return _GetNewsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetNewsResponse {
  String get status => throw _privateConstructorUsedError;
  String get copyright => throw _privateConstructorUsedError;
  String get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_results')
  int get numResults => throw _privateConstructorUsedError;
  List<ArticleModel> get results => throw _privateConstructorUsedError;

  /// Serializes this GetNewsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetNewsResponseCopyWith<GetNewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNewsResponseCopyWith<$Res> {
  factory $GetNewsResponseCopyWith(
          GetNewsResponse value, $Res Function(GetNewsResponse) then) =
      _$GetNewsResponseCopyWithImpl<$Res, GetNewsResponse>;
  @useResult
  $Res call(
      {String status,
      String copyright,
      String section,
      @JsonKey(name: 'last_updated') DateTime lastUpdated,
      @JsonKey(name: 'num_results') int numResults,
      List<ArticleModel> results});
}

/// @nodoc
class _$GetNewsResponseCopyWithImpl<$Res, $Val extends GetNewsResponse>
    implements $GetNewsResponseCopyWith<$Res> {
  _$GetNewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? copyright = null,
    Object? section = null,
    Object? lastUpdated = null,
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
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$GetNewsResponseImplCopyWith<$Res>
    implements $GetNewsResponseCopyWith<$Res> {
  factory _$$GetNewsResponseImplCopyWith(_$GetNewsResponseImpl value,
          $Res Function(_$GetNewsResponseImpl) then) =
      __$$GetNewsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      String copyright,
      String section,
      @JsonKey(name: 'last_updated') DateTime lastUpdated,
      @JsonKey(name: 'num_results') int numResults,
      List<ArticleModel> results});
}

/// @nodoc
class __$$GetNewsResponseImplCopyWithImpl<$Res>
    extends _$GetNewsResponseCopyWithImpl<$Res, _$GetNewsResponseImpl>
    implements _$$GetNewsResponseImplCopyWith<$Res> {
  __$$GetNewsResponseImplCopyWithImpl(
      _$GetNewsResponseImpl _value, $Res Function(_$GetNewsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? copyright = null,
    Object? section = null,
    Object? lastUpdated = null,
    Object? numResults = null,
    Object? results = null,
  }) {
    return _then(_$GetNewsResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$GetNewsResponseImpl implements _GetNewsResponse {
  const _$GetNewsResponseImpl(
      {required this.status,
      required this.copyright,
      required this.section,
      @JsonKey(name: 'last_updated') required this.lastUpdated,
      @JsonKey(name: 'num_results') required this.numResults,
      required final List<ArticleModel> results})
      : _results = results;

  factory _$GetNewsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNewsResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String copyright;
  @override
  final String section;
  @override
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;
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
    return 'GetNewsResponse(status: $status, copyright: $copyright, section: $section, lastUpdated: $lastUpdated, numResults: $numResults, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.numResults, numResults) ||
                other.numResults == numResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, copyright, section,
      lastUpdated, numResults, const DeepCollectionEquality().hash(_results));

  /// Create a copy of GetNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewsResponseImplCopyWith<_$GetNewsResponseImpl> get copyWith =>
      __$$GetNewsResponseImplCopyWithImpl<_$GetNewsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNewsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetNewsResponse implements GetNewsResponse {
  const factory _GetNewsResponse(
      {required final String status,
      required final String copyright,
      required final String section,
      @JsonKey(name: 'last_updated') required final DateTime lastUpdated,
      @JsonKey(name: 'num_results') required final int numResults,
      required final List<ArticleModel> results}) = _$GetNewsResponseImpl;

  factory _GetNewsResponse.fromJson(Map<String, dynamic> json) =
      _$GetNewsResponseImpl.fromJson;

  @override
  String get status;
  @override
  String get copyright;
  @override
  String get section;
  @override
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'num_results')
  int get numResults;
  @override
  List<ArticleModel> get results;

  /// Create a copy of GetNewsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNewsResponseImplCopyWith<_$GetNewsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
