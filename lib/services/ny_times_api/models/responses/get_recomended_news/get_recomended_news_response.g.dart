// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recomended_news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRecommendedNewsResponseImpl _$$GetRecommendedNewsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRecommendedNewsResponseImpl(
      status: json['status'] as String,
      copyright: json['copyright'] as String,
      numResults: (json['num_results'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetRecommendedNewsResponseImplToJson(
        _$GetRecommendedNewsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'num_results': instance.numResults,
      'results': instance.results,
    };
