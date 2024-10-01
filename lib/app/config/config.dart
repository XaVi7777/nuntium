import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/export.dart';

part 'config.freezed.dart';

@freezed
class Config with _$Config {
  const factory Config({
    @Default(3600) int cacheTTL,
    @Default(SectionModel(
      type: 'home',
      isSelected: true,
    ))
    SectionModel defaultActiveSection,
    @Default(1) int defaultRecommendationPeriod,
    @Default([
      SectionModel(
        type: 'home',
        isSelected: true,
      ),
      SectionModel(type: 'arts'),
      SectionModel(type: 'automobiles'),
      SectionModel(type: 'books/review'),
      SectionModel(type: 'business'),
      SectionModel(type: 'fashion'),
      SectionModel(type: 'food'),
      SectionModel(type: 'health'),
      SectionModel(type: 'insider'),
      SectionModel(type: 'magazine'),
      SectionModel(type: 'movies'),
      SectionModel(type: 'nyregion'),
      SectionModel(type: 'obituaries'),
      SectionModel(type: 'opinion'),
      SectionModel(type: 'politics'),
      SectionModel(type: 'realestate'),
      SectionModel(type: 'science'),
      SectionModel(type: 'sports'),
      SectionModel(type: 'technology'),
      SectionModel(type: 'theater'),
      SectionModel(type: 't-magazine'),
      SectionModel(type: 'travel'),
      SectionModel(type: 'upshot'),
      SectionModel(type: 'us'),
      SectionModel(type: 'world'),
    ])
    List<SectionModel> sections,
  }) = _Config;
}
