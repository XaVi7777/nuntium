import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/data/models/section/section_model.dart';

part 'home_articles_bloc_models.freezed.dart';

@freezed
class HomeArticlesState with _$HomeArticlesState {
  HomeArticlesStateData get data => this as HomeArticlesStateData;

  const HomeArticlesState._();

  const factory HomeArticlesState.data({
    required List<ArticleModel> articles,
  }) = HomeArticlesStateData;

  const factory HomeArticlesState.empty() = _Empty;
  const factory HomeArticlesState.loading() = _Loading;
  const factory HomeArticlesState.error() = _Error;
}

@freezed
class HomeArticlesEvent with _$HomeArticlesEvent {
  const factory HomeArticlesEvent.init() = HomeArticlesEventInit;
  const factory HomeArticlesEvent.retry() = HomeArticlesEventRetry;
  const factory HomeArticlesEvent.getArticlesBySection(SectionModel section) =
      HomeArticlesEventGetArticlesBySection;
  const factory HomeArticlesEvent.updateArticles(List<ArticleModel> articles) =
      HomeArticlesEventUpdateArticles;
  const factory HomeArticlesEvent.searchArticles(String? searchValue) =
      HomeArticlesEventSearchArticles;
}
