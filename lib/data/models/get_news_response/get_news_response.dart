import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/article/article_model.dart';

part 'get_news_response.g.dart';
part 'get_news_response.freezed.dart';

@freezed
class GetNewsResponse with _$GetNewsResponse {
  const factory GetNewsResponse({
    required String status,
    required String copyright,
    required String section,
    @JsonKey(name: 'last_updated') required DateTime lastUpdated,
    @JsonKey(name: 'num_results') required int numResults,
    required List<ArticleModel> results,
  }) = _GetNewsResponse;

  factory GetNewsResponse.fromJson(Map<String, dynamic> json) => _$GetNewsResponseFromJson(json);
}
