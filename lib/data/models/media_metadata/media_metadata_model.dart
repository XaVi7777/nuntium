import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_metadata_model.freezed.dart';
part 'media_metadata_model.g.dart';

@freezed
class MediaMetadataModel with _$MediaMetadataModel {
  const MediaMetadataModel._();

  const factory MediaMetadataModel({
    required String url,
    required String format,
    required int height,
    required int width,
  }) = _MediaMetadataModel;

  factory MediaMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$MediaMetadataModelFromJson(json);

  bool get isImage => format == 'image';
}
