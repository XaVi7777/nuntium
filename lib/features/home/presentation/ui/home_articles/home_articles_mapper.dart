import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/error_with_retry/error_with_retry.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc_models.dart';
import 'package:nuntium/features/home/presentation/ui/home_articles/home_articles_list.dart';
import 'package:nuntium/features/home/presentation/ui/home_articles/home_articles_loading.dart';

class HomeArticlesMapper extends StatelessWidget {
  final HomeArticlesState articlesState;

  const HomeArticlesMapper({
    required this.articlesState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return articlesState.map(
      data: (state) => HomeArticlesList(
        articles: state.articles,
      ),
      empty: (_) => const HomeArticlesLoading(),
      loading: (_) => const HomeArticlesLoading(),
      error: (_) => ErrorWithRetry(
        onRetry: () => context
            .read<HomeArticlesBloc>()
            .add(const HomeArticlesEvent.retry()),
        isTextButton: true,
      ),
    );
  }
}
