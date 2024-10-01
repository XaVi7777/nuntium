import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';
import 'package:nuntium/generated/fonts.gen.dart';

abstract class AppTextTheme {
  TextStyle get headlineMedium;
  TextStyle get headlineSmall;
  TextStyle get bodyMedium;
  TextStyle get bodyLarge;
  TextStyle get cardLabelTextSmall;
  TextStyle get cardTitleTextSmall;
  TextStyle get cardLabelTextMedium;
  TextStyle get descriptionMedium;
  TextStyle get descriptionSmall;
  TextStyle get buttonText;
  TextStyle get linkButtonTextMedium;
  TextStyle get linkButtonTextSmall;

 TextTheme get theme;
}

class BaseTextTheme implements AppTextTheme {
  static const String _fontFamily = FontFamily.sFProText;

  @override
  TextStyle get headlineMedium => const TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        height: 32 / 24,
        letterSpacing: 0,
        color: AppPallete.blackPrimary,
      );

  @override
  TextStyle get headlineSmall => const TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 24 / 20,
        letterSpacing: 0,
        color: AppPallete.blackPrimary,
      );

  @override
  TextStyle get descriptionMedium => const TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0,
        color: AppPallete.greyPrimary,
      );

  @override
  TextStyle get descriptionSmall => const TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 24 / 14,
        letterSpacing: 0,
        color: AppPallete.greyPrimary,
      );

  @override
  TextStyle get buttonText => const TextStyle(
        fontSize: 16,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        height: 24 / 16,
      );

  @override
  TextStyle get linkButtonTextMedium => const TextStyle(
        fontSize: 16,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        height: 24 / 16,
        color: AppPallete.blackPrimary,
      );
  @override
  TextStyle get linkButtonTextSmall => const TextStyle(
        fontSize: 14,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        height: 24 / 16,
        color: AppPallete.greyPrimary,
      );

  @override
  TextStyle get bodyMedium => const TextStyle(
        fontSize: 16,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        height: 24 / 16,
        color: AppPallete.blackPrimary,
      );

  @override
  TextStyle get bodyLarge => const TextStyle(
        fontSize: 20,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        height: 28 / 20,
        color: AppPallete.blackPrimary,
      );

  @override
  TextStyle get cardLabelTextSmall => const TextStyle(
        fontSize: 12,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        height: 16 / 12,
      );

  @override
  TextStyle get cardLabelTextMedium => const TextStyle(
        fontSize: 16,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        height: 24 / 16,
        color: AppPallete.greyDark,
      );

  @override
  TextStyle get cardTitleTextSmall => const TextStyle(
        fontSize: 16,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        height: 24 / 16,
      );

  @override
  TextTheme get theme => TextTheme(
        headlineMedium: headlineMedium,
      );
}
