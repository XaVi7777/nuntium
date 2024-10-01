import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/article/article_model.dart';

part 'get_recomended_news_response.g.dart';
part 'get_recomended_news_response.freezed.dart';

@freezed
class GetRecommendedNewsResponse with _$GetRecommendedNewsResponse {
  const factory GetRecommendedNewsResponse({
    required String status,
    required String copyright,
    @JsonKey(name: 'num_results') required int numResults,
    required List<ArticleModel> results,
  }) = _GetRecommendedNewsResponse;

  factory GetRecommendedNewsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRecommendedNewsResponseFromJson(json);
}
