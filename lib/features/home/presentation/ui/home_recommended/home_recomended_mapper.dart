import 'package:flutter/widgets.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_bloc_models.dart';
import 'package:nuntium/features/home/presentation/ui/home_recommended/home_recommended_list.dart';

class HomeRecomendedMapper extends StatelessWidget {
  final HomeRecommendedState homeRecommendedState;

  const HomeRecomendedMapper({
    required this.homeRecommendedState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return homeRecommendedState.map(
      data: (state) {
        final articles = state.recommended;

        return articles.isNotEmpty
            ? HomeRecommendedList(articles: articles)
            : const SliverToBoxAdapter(child: SizedBox.shrink());
      },
      empty: (_) => const SliverToBoxAdapter(child: SizedBox.shrink()),
      loading: (_) => const SliverToBoxAdapter(child: SizedBox.shrink()),
    );
  }
}
