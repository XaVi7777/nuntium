import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_bloc_models.dart';

extension HomeRecommendedStateMapper on HomeRecommendedState {
  HomeRecommendedState mapState(List<ArticleModel> recommended) {
    return maybeMap(
      data: (currentState) => currentState.copyWith(recommended: recommended),
      orElse: () => HomeRecommendedState.data(recommended: recommended),
    );
  }
}
