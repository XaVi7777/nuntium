import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/core/storage/database/app_database.dart';
import 'package:nuntium/core/utils/uuid/uuid_utils.dart';
import 'package:nuntium/data/models/media/media_model.dart';
import 'package:nuntium/data/models/media_metadata/media_metadata_model.dart';

part 'article_model.freezed.dart';

@freezed
class ArticleModel with _$ArticleModel {
  const ArticleModel._();

  const factory ArticleModel({
    required String uuid,
    required String section,
    required String subsection,
    required String title,
    required String abstract,
    required String url,
    required String uri,
    required String byline,
    String? itemType,
    DateTime? updatedDate,
    DateTime? createdDate,
    DateTime? publishedDate,
    String? materialTypeFacet,
    String? kicker,
    List<String>? desFacet,
    List<String>? orgFacet,
    List<String>? perFacet,
    List<String>? geoFacet,
    List<MediaModel>? media,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    List<MediaModel>? mediaList;

    if (json['media'] != null) {
      final mediaJsonList = json['media'] as List<dynamic>;
      mediaList = mediaJsonList.map((item) {
        return MediaModel.fromJson(item as Map<String, dynamic>);
      }).toList();
    } else if (json['multimedia'] != null) {
      final multimediaJsonList = json['multimedia'] as List<dynamic>;
      mediaList = [
        MediaModel(
          type: 'image',
          subtype: 'photo',
          caption: multimediaJsonList.isNotEmpty
              ? (multimediaJsonList[0] as Map<String, dynamic>)['caption']
                      as String? ??
                  ''
              : '',
          copyright: multimediaJsonList.isNotEmpty
              ? (multimediaJsonList[0] as Map<String, dynamic>)['copyright']
                      as String? ??
                  ''
              : '',
          approvedForSyndication: 1,
          mediaMetadata: multimediaJsonList.map((item) {
            final itemMap = item as Map<String, dynamic>;
            return MediaMetadataModel(
              url: itemMap['url'] as String,
              format: itemMap['format'] as String,
              height: itemMap['height'] as int,
              width: itemMap['width'] as int,
            );
          }).toList(),
        ),
      ];
    }

    return ArticleModel(
      uuid: UuidUtils.generateUuid(),
      section: json['section'] as String,
      subsection: json['subsection'] as String? ?? '',
      title: json['title'] as String,
      abstract: json['abstract'] as String,
      url: json['url'] as String,
      uri: json['uri'] as String,
      byline: json['byline'] as String? ?? '',
      itemType: json['item_type'] as String? ?? json['type'] as String?,
      updatedDate: json['updated_date'] != null
          ? DateTime.parse(json['updated_date'] as String)
          : (json['updated'] != null
              ? DateTime.parse(json['updated'] as String)
              : null),
      createdDate: json['created_date'] != null
          ? DateTime.parse(json['created_date'] as String)
          : null,
      publishedDate: json['published_date'] != null
          ? DateTime.parse(json['published_date'] as String)
          : (json['published'] != null
              ? DateTime.parse(json['published'] as String)
              : null),
      materialTypeFacet: json['material_type_facet'] as String?,
      kicker: json['kicker'] as String?,
      desFacet: (json['des_facet'] as List<dynamic>?)
          ?.map((item) => item as String)
          .toList(),
      orgFacet: (json['org_facet'] as List<dynamic>?)
          ?.map((item) => item as String)
          .toList(),
      perFacet: (json['per_facet'] as List<dynamic>?)
          ?.map((item) => item as String)
          .toList(),
      geoFacet: (json['geo_facet'] as List<dynamic>?)
          ?.map((item) => item as String)
          .toList(),
      media: mediaList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'section': section,
      'subsection': subsection,
      'title': title,
      'abstract': abstract,
      'url': url,
      'uri': uri,
      'byline': byline,
      'item_type': itemType,
      'updated_date': updatedDate?.toIso8601String(),
      'created_date': createdDate?.toIso8601String(),
      'published_date': publishedDate?.toIso8601String(),
      'material_type_facet': materialTypeFacet,
      'kicker': kicker,
      'des_facet': desFacet,
      'org_facet': orgFacet,
      'per_facet': perFacet,
      'geo_facet': geoFacet,
      'media': media?.map((item) => item.toJson()).toList(),
    };
  }
}

extension ArticleModelMapper on ArticleModel {
  ArticlesTableCompanion toCompanion() {
    return ArticlesTableCompanion(
      uuid: drift.Value(uuid),
      section: drift.Value(section),
      subsection: drift.Value(subsection),
      title: drift.Value(title),
      abstract: drift.Value(abstract),
      url: drift.Value(url),
      uri: drift.Value(uri),
      byline: drift.Value(byline),
      desFacet: drift.Value(desFacet),
      orgFacet: drift.Value(orgFacet),
      perFacet: drift.Value(perFacet),
      geoFacet: drift.Value(geoFacet),
      media: drift.Value(media),
    );
  }

  static ArticleModel fromDatabase(ArticlesTableData data) {
    return ArticleModel(
      uuid: data.uuid,
      section: data.section,
      subsection: data.subsection ?? '',
      title: data.title,
      abstract: data.abstract,
      url: data.url,
      uri: data.uri,
      byline: data.byline ?? '',
      desFacet: data.desFacet?.cast<String>(),
      orgFacet: data.orgFacet?.cast<String>(),
      perFacet: data.perFacet?.cast<String>(),
      geoFacet: data.geoFacet?.cast<String>(),
      media: data.media?.cast<MediaModel>(),
    );
  }
}
