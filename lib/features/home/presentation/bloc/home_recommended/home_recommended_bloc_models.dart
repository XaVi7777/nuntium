import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/article/article_model.dart';

part 'home_recommended_bloc_models.freezed.dart';

@freezed
class HomeRecommendedState with _$HomeRecommendedState {
  HomeRecommendedStateData get data => this as HomeRecommendedStateData;

  const HomeRecommendedState._();

  const factory HomeRecommendedState.data({
    required List<ArticleModel> recommended,
  }) = HomeRecommendedStateData;

  const factory HomeRecommendedState.empty() = _Empty;
  const factory HomeRecommendedState.loading() = _Loading;
}

@freezed
class HomeRecommendedEvent with _$HomeRecommendedEvent {
  const factory HomeRecommendedEvent.init() = HomeRecommendedEventInit;
  const factory HomeRecommendedEvent.search(String? searchValue) =
      HomeRecommendedEventSearch;

  const factory HomeRecommendedEvent.updateRecommended(List<ArticleModel> articles) =
      HomeRecommendedEventUpdateRecommended;
}
