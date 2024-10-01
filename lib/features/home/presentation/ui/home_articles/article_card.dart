import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/article_image/article_image.dart';
import 'package:nuntium/app/widgets/article_title/article_title.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/features/home/presentation/bloc/home_bookmarks/home_bookmarks_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_bookmarks/home_bookmarks_bloc_models.dart';
import 'package:nuntium/generated/assets.gen.dart';

class ArticleCard extends StatelessWidget {
  final ArticleModel article;

  const ArticleCard({
    required this.article,
    super.key,
  });


  static const _iconPadding = EdgeInsets.only(top: 8, right: 8);
  static const _titlePadding = EdgeInsets.only(bottom: 24, left: 24, right: 24);

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    final colorTheme = theme.colorTheme;
    final mediaMetadata = article.media?.first.mediaMetadata;
    return Stack(
      children: [
        ArticleImage(
          size: UISizes.hugeCard,
          mediaMetadata: mediaMetadata,
          overlayFilter: ImageFilter.blur(sigmaX: .25, sigmaY: .25),
        ),
        Positioned(
          bottom: _titlePadding.bottom,
          left: _titlePadding.left,
          right: _titlePadding.right,
          child: ArticleTitle(
            article: article,
          ),
        ),
        Positioned(
          top: _iconPadding.top,
          right: _iconPadding.right,
          child: UIInkWell(
            onTap: () => _onTapBookmark(context),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: UISVGIcon(
                assetName: Assets.svgCompiled.bookmark,
                color: colorTheme.onAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onTapBookmark(BuildContext context) {
    context
        .read<HomeBookmarksBloc>()
        .add(HomeBookmarksEvent.addBookmark(article));
  }
}
