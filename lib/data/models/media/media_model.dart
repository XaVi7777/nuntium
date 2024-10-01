import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/media_metadata/media_metadata_model.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
class MediaModel with _$MediaModel {
  const MediaModel._();

  const factory MediaModel({
    required String type,
    required String subtype,
    required String caption,
    required String copyright,
    @JsonKey(name: 'approved_for_syndication')
    required int approvedForSyndication,
    @JsonKey(name: 'media-metadata')
    required List<MediaMetadataModel> mediaMetadata,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}
