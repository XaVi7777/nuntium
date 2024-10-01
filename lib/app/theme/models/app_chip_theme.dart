import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';
import 'package:nuntium/generated/fonts.gen.dart';

abstract class AppChipTheme {
  ChipThemeData get theme;
}

class BaseChipTheme implements AppChipTheme {
  static const String _fontFamily = FontFamily.sFProText;
  @override
  ChipThemeData get theme => ChipThemeData(
        backgroundColor: AppPallete.greyLighter,
        selectedColor: AppPallete.purplePrimary,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        side: BorderSide.none,
        labelStyle: const TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          height: 16 / 12,
          letterSpacing: 0,
          color: AppPallete.greyPrimary,
        ),
        disabledColor: Colors.transparent,
      );
}
