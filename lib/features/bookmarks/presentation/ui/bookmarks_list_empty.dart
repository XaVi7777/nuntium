import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/core/extensions/list_divide_ext.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/generated/assets.gen.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class BookmarksListEmpty extends StatelessWidget {
  const BookmarksListEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: theme.colorTheme.backgroundWindowBackground,
          ),
          child: UISVGIcon(
            assetName: Assets.svgCompiled.bookmarkAlt,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Text(
            LocaleKeys.bookmarks_empty.tr(),
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ].divide(
        const SizedBox(
          height: 24,
        ),
      ),
    );
  }
}
