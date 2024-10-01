import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nuntium/app/localization/localizations.dart';
import 'package:nuntium/app/theme/models/app_list_tile_theme.dart';
import 'package:nuntium/app/widgets/content_padding/content_padding.dart';
import 'package:nuntium/core/extensions/list_divide_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/ui/ui_list_tile/ui_list_tile.dart';
import 'package:nuntium/generated/assets.gen.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class SelectLanguageContent extends StatelessWidget {
  const SelectLanguageContent({
    super.key,
  });

  static const _items = [
      UIListTileConfig(
        title: LocaleKeys.english,
        value: SupportedLocales.us,
      ),
      UIListTileConfig(
        title: LocaleKeys.russian,
        value: SupportedLocales.ru,
      ),
    ];

  @override
  Widget build(BuildContext context) {

    return ContentPadding(
      child: UIListView(
        children: [
          ..._items
              .map((item) => _itemMapper(item, context.locale))
              .divide(UISpacers.mediumSpacing)
        ],
      ),
    );
  }

  Widget _itemMapper(UIListTileConfig<Locale> item, Locale savedLocale) {
    final isSelected = item.value == savedLocale;
    final listTileTheme = SelectableListTileTheme(isSelected: isSelected);

    return Builder(builder: (context) {
      return UIListTile(
        title: Text(
          item.title!.tr(),
          style: listTileTheme.titleTextStyle,
        ),
        trailing:
            isSelected ? UISVGIcon(assetName: Assets.svgCompiled.check) : null,
        tileColor: listTileTheme.tileColor,
        contentPadding: listTileTheme.contentPadding,
        onTap: isSelected ? null : () => context.setLocale(item.value!),
      );
    });
  }
}
