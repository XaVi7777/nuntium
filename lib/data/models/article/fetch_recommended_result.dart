import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/article/article_model.dart';

part 'fetch_recommended_result.freezed.dart';

@freezed
class FetchRecommendedResult with _$FetchRecommendedResult {
  const factory FetchRecommendedResult({
    required int period,
    required List<ArticleModel> articles,
    @Default(false) bool isUpdated,
  }) = _FetchRecommendedResult;
}
