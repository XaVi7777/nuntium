import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc_models.dart';

extension RecommendedStateMapper on RecommendedState {
  RecommendedState mapState(List<ArticleModel> recommended) {
    return maybeMap(
      data: (currentState) => currentState.copyWith(recommended: recommended),
      orElse: () => RecommendedState.data(recommended: recommended),
    );
  }
}
