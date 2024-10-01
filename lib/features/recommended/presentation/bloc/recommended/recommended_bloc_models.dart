import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/article/article_model.dart';

part 'recommended_bloc_models.freezed.dart';

@freezed
class RecommendedState with _$RecommendedState {
  RecommendedStateData get data => this as RecommendedStateData;

  const RecommendedState._();

  const factory RecommendedState.data({
    required List<ArticleModel> recommended,
  }) = RecommendedStateData;

  const factory RecommendedState.empty() = _Empty;
  const factory RecommendedState.error() = _Error;
}

@freezed
class RecommendedEvent with _$RecommendedEvent {
  const factory RecommendedEvent.init() = RecommendedEventInit;
  const factory RecommendedEvent.updateRecommended(
      List<ArticleModel> recommended) = RecommendedEventUpdateRecommended;
  const factory RecommendedEvent.addBookmark(ArticleModel article) =
      RecommendedEventAddBookmark;
}
