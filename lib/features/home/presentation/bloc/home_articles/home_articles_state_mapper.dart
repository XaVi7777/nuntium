import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc_models.dart';

extension HomeArticlesStateMapper on HomeArticlesState {
  HomeArticlesState mapState(List<ArticleModel> articles) {
    return map(
      empty: (_) => HomeArticlesState.data(articles: articles),
      data: (currentState) => currentState.copyWith(articles: articles),
      loading: (_) => HomeArticlesState.data(articles: articles),
      error: (_) => HomeArticlesState.data(articles: articles),
    );
  }
}
