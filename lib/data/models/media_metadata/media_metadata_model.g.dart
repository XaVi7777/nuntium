// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_metadata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaMetadataModelImpl _$$MediaMetadataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaMetadataModelImpl(
      url: json['url'] as String,
      format: json['format'] as String,
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
    );

Map<String, dynamic> _$$MediaMetadataModelImplToJson(
        _$MediaMetadataModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'format': instance.format,
      'height': instance.height,
      'width': instance.width,
    };
