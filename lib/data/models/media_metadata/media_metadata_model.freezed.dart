// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_metadata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaMetadataModel _$MediaMetadataModelFromJson(Map<String, dynamic> json) {
  return _MediaMetadataModel.fromJson(json);
}

/// @nodoc
mixin _$MediaMetadataModel {
  String get url => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  /// Serializes this MediaMetadataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaMetadataModelCopyWith<MediaMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaMetadataModelCopyWith<$Res> {
  factory $MediaMetadataModelCopyWith(
          MediaMetadataModel value, $Res Function(MediaMetadataModel) then) =
      _$MediaMetadataModelCopyWithImpl<$Res, MediaMetadataModel>;
  @useResult
  $Res call({String url, String format, int height, int width});
}

/// @nodoc
class _$MediaMetadataModelCopyWithImpl<$Res, $Val extends MediaMetadataModel>
    implements $MediaMetadataModelCopyWith<$Res> {
  _$MediaMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? format = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaMetadataModelImplCopyWith<$Res>
    implements $MediaMetadataModelCopyWith<$Res> {
  factory _$$MediaMetadataModelImplCopyWith(_$MediaMetadataModelImpl value,
          $Res Function(_$MediaMetadataModelImpl) then) =
      __$$MediaMetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String format, int height, int width});
}

/// @nodoc
class __$$MediaMetadataModelImplCopyWithImpl<$Res>
    extends _$MediaMetadataModelCopyWithImpl<$Res, _$MediaMetadataModelImpl>
    implements _$$MediaMetadataModelImplCopyWith<$Res> {
  __$$MediaMetadataModelImplCopyWithImpl(_$MediaMetadataModelImpl _value,
      $Res Function(_$MediaMetadataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? format = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$MediaMetadataModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaMetadataModelImpl extends _MediaMetadataModel {
  const _$MediaMetadataModelImpl(
      {required this.url,
      required this.format,
      required this.height,
      required this.width})
      : super._();

  factory _$MediaMetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaMetadataModelImplFromJson(json);

  @override
  final String url;
  @override
  final String format;
  @override
  final int height;
  @override
  final int width;

  @override
  String toString() {
    return 'MediaMetadataModel(url: $url, format: $format, height: $height, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaMetadataModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, format, height, width);

  /// Create a copy of MediaMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaMetadataModelImplCopyWith<_$MediaMetadataModelImpl> get copyWith =>
      __$$MediaMetadataModelImplCopyWithImpl<_$MediaMetadataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaMetadataModelImplToJson(
      this,
    );
  }
}

abstract class _MediaMetadataModel extends MediaMetadataModel {
  const factory _MediaMetadataModel(
      {required final String url,
      required final String format,
      required final int height,
      required final int width}) = _$MediaMetadataModelImpl;
  const _MediaMetadataModel._() : super._();

  factory _MediaMetadataModel.fromJson(Map<String, dynamic> json) =
      _$MediaMetadataModelImpl.fromJson;

  @override
  String get url;
  @override
  String get format;
  @override
  int get height;
  @override
  int get width;

  /// Create a copy of MediaMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaMetadataModelImplCopyWith<_$MediaMetadataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
