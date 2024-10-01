import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/data/models/export.dart';

class ArticleTitle extends StatelessWidget {
  final ArticleModel article;
  final TextStyle? sectionTextStyle;
  final TextStyle? titleTextStyle;
  final Color? sectionTextColor;
  final Color? titleTextColor;
  final int maxLines;
  final double spacing;

  const ArticleTitle({
    required this.article,
    this.sectionTextStyle,
    this.titleTextStyle,
    this.sectionTextColor,
    this.titleTextColor,
    this.maxLines = 3,
    this.spacing = 8.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final textTheme = theme.textTheme;
    final colorTheme = theme.colorTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          article.section.toUpperCase(),
          style: sectionTextStyle ??
              textTheme.cardLabelTextSmall.copyWith(
                color: sectionTextColor ?? colorTheme.textOnAccentSecondary,
              ),
        ),
        SizedBox(height: spacing),
        Text(
          article.title,
          style: titleTextStyle ??
              textTheme.cardTitleTextSmall.copyWith(
                color: titleTextColor ?? colorTheme.textOnAccent,
              ),
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
