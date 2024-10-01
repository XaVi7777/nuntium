import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc_models.dart';
import 'package:nuntium/app/widgets/article_medium_card/article_medium_card.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc_models.dart';
import 'package:nuntium/generated/assets.gen.dart';

class RecommendedList extends StatelessWidget {
  final List<ArticleModel> recommended;

  const RecommendedList({
    required this.recommended,
    super.key,
  });

  int get _itemCount => recommended.length + 2;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: _itemBuilder,
      itemCount: _itemCount,
      separatorBuilder: _separatorBuilder,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    if (index == 0 || index == _itemCount - 1) {
      return const SizedBox.shrink();
    }

    final article = recommended[index - 1];
    final theme = context.appTheme;

    return UISlidable(
      key: ValueKey(article.uuid),
      child: UIInkWell(
        onTap: () => _onTapCard(context, article),
        child: ArticleMediumCard(
          article: article,
        ),
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          UISlidableAction(
            onPressed: (context) => _onPressedAdd(context, article),
            child: UISVGIcon(
              color: theme.colorTheme.onAccent,
              assetName: Assets.svgCompiled.bookmark,
            ),
          )
        ],
      ),
    );
  }

  void _onPressedAdd(BuildContext context, ArticleModel article) {
    context.read<RecommendedBloc>().add(RecommendedEvent.addBookmark(article));
  }

  void _onTapCard(BuildContext context, ArticleModel article) {
    context
        .read<NavigationBloc>()
        .add(NavigationEvent.push(WebViewRoute(url: article.url)));
  }

  Widget _separatorBuilder(BuildContext context, int index) =>
      UISpacers.mediumSpacing;
}
