import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';
import 'package:nuntium/generated/fonts.gen.dart';

abstract class AppListTileTheme {
  TextStyle get titleTextStyle;

  Color get tileColor;

  ShapeBorder get shape;

  EdgeInsetsGeometry get contentPadding;

  ListTileThemeData get theme;
}

class BaseListTileTheme implements AppListTileTheme {
  static const String _fontFamily = FontFamily.sFProText;

  @override
  TextStyle get titleTextStyle => const TextStyle(
        fontSize: 16,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        height: 24 / 16,
        color: AppPallete.greyDark,
      );

  @override
  Color get tileColor => AppPallete.greyLighter;

  @override
  ShapeBorder get shape =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12));

  @override
  EdgeInsetsGeometry get contentPadding => const EdgeInsets.symmetric(
        horizontal: 16,
      );

  @override
  ListTileThemeData get theme => ListTileThemeData(
        titleTextStyle: titleTextStyle,
        tileColor: tileColor,
        shape: shape,
        contentPadding: contentPadding,
      );
}

class SelectableListTileTheme extends BaseListTileTheme {
  final bool isSelected;

  SelectableListTileTheme({required this.isSelected});

  @override
  TextStyle get titleTextStyle => super.titleTextStyle.copyWith(
        color: isSelected ? Colors.white : AppPallete.greyDark,
      );

  @override
  Color get tileColor =>
      isSelected ? AppPallete.purplePrimary : super.tileColor;

  @override
  ShapeBorder get shape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelected
            ? const BorderSide(color: AppPallete.purplePrimary)
            : BorderSide.none,
      );
}
