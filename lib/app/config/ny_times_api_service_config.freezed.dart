// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ny_times_api_service_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NyTimesApiServiceConfig {
  String get apiKey => throw _privateConstructorUsedError;
  String get baseEndpoint => throw _privateConstructorUsedError;
  String get apiVersion => throw _privateConstructorUsedError;

  /// Create a copy of NyTimesApiServiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NyTimesApiServiceConfigCopyWith<NyTimesApiServiceConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NyTimesApiServiceConfigCopyWith<$Res> {
  factory $NyTimesApiServiceConfigCopyWith(NyTimesApiServiceConfig value,
          $Res Function(NyTimesApiServiceConfig) then) =
      _$NyTimesApiServiceConfigCopyWithImpl<$Res, NyTimesApiServiceConfig>;
  @useResult
  $Res call({String apiKey, String baseEndpoint, String apiVersion});
}

/// @nodoc
class _$NyTimesApiServiceConfigCopyWithImpl<$Res,
        $Val extends NyTimesApiServiceConfig>
    implements $NyTimesApiServiceConfigCopyWith<$Res> {
  _$NyTimesApiServiceConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NyTimesApiServiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? baseEndpoint = null,
    Object? apiVersion = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      baseEndpoint: null == baseEndpoint
          ? _value.baseEndpoint
          : baseEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NyTimesApiServiceConfigImplCopyWith<$Res>
    implements $NyTimesApiServiceConfigCopyWith<$Res> {
  factory _$$NyTimesApiServiceConfigImplCopyWith(
          _$NyTimesApiServiceConfigImpl value,
          $Res Function(_$NyTimesApiServiceConfigImpl) then) =
      __$$NyTimesApiServiceConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey, String baseEndpoint, String apiVersion});
}

/// @nodoc
class __$$NyTimesApiServiceConfigImplCopyWithImpl<$Res>
    extends _$NyTimesApiServiceConfigCopyWithImpl<$Res,
        _$NyTimesApiServiceConfigImpl>
    implements _$$NyTimesApiServiceConfigImplCopyWith<$Res> {
  __$$NyTimesApiServiceConfigImplCopyWithImpl(
      _$NyTimesApiServiceConfigImpl _value,
      $Res Function(_$NyTimesApiServiceConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of NyTimesApiServiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? baseEndpoint = null,
    Object? apiVersion = null,
  }) {
    return _then(_$NyTimesApiServiceConfigImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      baseEndpoint: null == baseEndpoint
          ? _value.baseEndpoint
          : baseEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NyTimesApiServiceConfigImpl implements _NyTimesApiServiceConfig {
  const _$NyTimesApiServiceConfigImpl(
      {required this.apiKey,
      required this.baseEndpoint,
      required this.apiVersion});

  @override
  final String apiKey;
  @override
  final String baseEndpoint;
  @override
  final String apiVersion;

  @override
  String toString() {
    return 'NyTimesApiServiceConfig(apiKey: $apiKey, baseEndpoint: $baseEndpoint, apiVersion: $apiVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NyTimesApiServiceConfigImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.baseEndpoint, baseEndpoint) ||
                other.baseEndpoint == baseEndpoint) &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, apiKey, baseEndpoint, apiVersion);

  /// Create a copy of NyTimesApiServiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NyTimesApiServiceConfigImplCopyWith<_$NyTimesApiServiceConfigImpl>
      get copyWith => __$$NyTimesApiServiceConfigImplCopyWithImpl<
          _$NyTimesApiServiceConfigImpl>(this, _$identity);
}

abstract class _NyTimesApiServiceConfig implements NyTimesApiServiceConfig {
  const factory _NyTimesApiServiceConfig(
      {required final String apiKey,
      required final String baseEndpoint,
      required final String apiVersion}) = _$NyTimesApiServiceConfigImpl;

  @override
  String get apiKey;
  @override
  String get baseEndpoint;
  @override
  String get apiVersion;

  /// Create a copy of NyTimesApiServiceConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NyTimesApiServiceConfigImplCopyWith<_$NyTimesApiServiceConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}
