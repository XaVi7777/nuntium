// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNewsResponseImpl _$$GetNewsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNewsResponseImpl(
      status: json['status'] as String,
      copyright: json['copyright'] as String,
      section: json['section'] as String,
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      numResults: (json['num_results'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetNewsResponseImplToJson(
        _$GetNewsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'section': instance.section,
      'last_updated': instance.lastUpdated.toIso8601String(),
      'num_results': instance.numResults,
      'results': instance.results,
    };
