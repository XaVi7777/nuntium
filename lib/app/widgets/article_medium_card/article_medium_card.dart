import 'package:flutter/widgets.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/app/widgets/article_image/article_image.dart';
import 'package:nuntium/app/widgets/article_title/article_title.dart';
import 'package:nuntium/core/extensions/list_divide_ext.dart';
import 'package:nuntium/data/models/article/article_model.dart';

class ArticleMediumCard extends StatelessWidget {
  final ArticleModel article;

  const ArticleMediumCard({
    required this.article,
    super.key,
  });

  static const _imageSize = Size(96, 96);
  static const _separator = SizedBox(
    width: 16,
  );
  static const _maxLines = 2;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final colorTheme = theme.colorTheme;

    return Row(
      children: [
        ArticleImage(
          mediaMetadata: article.media?.isNotEmpty ?? false
              ? article.media!.first.mediaMetadata
              : null,
          size: _imageSize,
        ),
        Expanded(
          child: ArticleTitle(
            article: article,
            sectionTextColor: colorTheme.secondaryAccent,
            titleTextColor: colorTheme.textPrimary,
            maxLines: _maxLines,
          ),
        ),
      ].divide(_separator),
    );
  }
}
