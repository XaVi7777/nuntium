import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/data/models/section/section_model.dart';

part 'fetch_articles_result.freezed.dart';

@freezed
class FetchArticlesResult with _$FetchArticlesResult {
  const factory FetchArticlesResult({
    required SectionModel section,
    required List<ArticleModel> articles,
    @Default(false) bool isUpdated,
  }) = _FetchArticlesResult;
}
