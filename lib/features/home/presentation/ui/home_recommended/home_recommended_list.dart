import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc_models.dart';
import 'package:nuntium/app/widgets/article_medium_card/article_medium_card.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui_list_tile/export.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/features/home/presentation/bloc/home_bookmarks/home_bookmarks_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_bookmarks/home_bookmarks_bloc_models.dart';
import 'package:nuntium/generated/assets.gen.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class HomeRecommendedList extends StatelessWidget {
  final List<ArticleModel> articles;

  const HomeRecommendedList({
    required this.articles,
    super.key,
  });

  static const _padding = EdgeInsets.symmetric(vertical: 16);

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index == 0) {
            return Padding(
              padding: _padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    LocaleKeys.recomended_title.tr(),
                    style: theme.textTheme.headlineSmall,
                  ),
                  UILinkButton(
                    onPressed: () => _onPressedSeeAll(context),
                    text: LocaleKeys.recomended_see_all.tr(),
                    textStyle: theme.textTheme.linkButtonTextSmall,
                  ),
                ],
              ),
            );
          } else if (index.isOdd || index == articles.length * 2) {
            return UISpacers.mediumSpacing;
          } else {
            final articleIndex = (index - 1) ~/ 2;
            return _itemBuilder(context, articleIndex);
          }
        },
        childCount: articles.length * 2 + 1,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    final article = articles[index];
    final theme = context.appTheme;
    return UIInkWell(
      key: ValueKey(article.uuid),
      onTap: () => _onTapCard(context, article),
      child: UISlidable(
        child: ArticleMediumCard(
          article: article,
        ),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            UISlidableAction(
              onPressed: (context) => _onPressedBookmark(context, article),
              child: UISVGIcon(
                color: theme.colorTheme.onAccent,
                assetName: Assets.svgCompiled.bookmark,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPressedBookmark(BuildContext context, ArticleModel article) {
    context
        .read<HomeBookmarksBloc>()
        .add(HomeBookmarksEvent.addBookmark(article));
  }

  void _onTapCard(BuildContext context, ArticleModel article) => context
      .read<NavigationBloc>()
      .add(NavigationEvent.push(WebViewRoute(url: article.url)));

  void _onPressedSeeAll(BuildContext context) => context
      .read<NavigationBloc>()
      .add(const NavigationEvent.push(RecommendedRoute()));
}
