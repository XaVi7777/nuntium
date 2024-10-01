import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/widgets/article_medium_card/article_medium_card.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';

import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/features/bookmarks/presentation/bloc/bookmarks_bloc.dart';
import 'package:nuntium/features/bookmarks/presentation/bloc/bookmarks_bloc_models.dart';
import 'package:nuntium/generated/assets.gen.dart';

class BookmarksList extends StatelessWidget {
  final List<ArticleModel> bookmarks;

  const BookmarksList({
    required this.bookmarks,
    super.key,
  });

  static const SizedBox _emptySpace = SizedBox.shrink();

  int get _itemCount => bookmarks.length + 2;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: _itemBuilder,
      separatorBuilder: separatorBuilder,
      itemCount: _itemCount,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    if (index == 0 || index == _itemCount - 1) {
      return _emptySpace;
    }

    final bookmark = bookmarks[index - 1];
    final theme = context.appTheme;
    return UIInkWell(
      key: ValueKey(bookmark.uuid),
      onTap: () => _onTapCard(context, bookmark),
      child: UISlidable(
        child: ArticleMediumCard(
          article: bookmark,
        ),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            UISlidableAction(
              onPressed: (context) => _onPressedRemove(context, bookmark),
              child: UISVGIcon(
                color: theme.colorTheme.onAccent,
                assetName: Assets.svgCompiled.trash,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget separatorBuilder(BuildContext context, int index) =>
      UISpacers.mediumSpacing;

  void _onPressedRemove(BuildContext context, ArticleModel bookmark) {
    context.read<BookmarksBloc>().add(BookmarksEvent.removeBookmark(bookmark));
  }

  void _onTapCard(BuildContext context, ArticleModel bookmark) {
    context.pushRoute(WebViewRoute(url: bookmark.url));
  }
}
