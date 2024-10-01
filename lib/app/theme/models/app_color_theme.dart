import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';

abstract class AppColorTheme {
  Brightness get brightness;

  Color get accent;
  Color get accentVariant;
  Color get onAccent;

  Color get secondaryAccent;
  Color get secondaryAccentVariant;
  Color get onSecondary;

  Color get textPrimary;
  Color get textSecondary;
  Color get textTertiary;
  Color get textOnAccent;
  Color get textOnAccentSecondary;
  Color get textDarker;

  Color get dividerPrimary;

  Color get backgroundSurface;
  Color get backgroundWindowBackground;
  Color get onSurface;
  Color get onBackground;

  Color get iconPrimary;
  Color get iconSecondary;
  Color get iconTertiary;
  Color get iconSystem;
  Color get iconOnAccent;

  Color get overlayDefault;

  Color get strokePrimary;
  Color get strokeSuccess;
  Color get strokeAttention;
  Color get strokeError;

  ColorScheme get colorScheme;
}

class LightColorTheme implements AppColorTheme {
  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get accent => AppPallete.purplePrimary;
  @override
  Color get accentVariant => AppPallete.purpleLight;
  @override
  Color get onAccent => AppPallete.white;

  @override
  Color get secondaryAccent => AppPallete.greyPrimary;
  @override
  Color get secondaryAccentVariant => AppPallete.greyLight;
  @override
  Color get onSecondary => AppPallete.blackDark;

  @override
  Color get textPrimary => AppPallete.blackPrimary;
  @override
  Color get textSecondary => AppPallete.blackLight;
  @override
  Color get textTertiary => AppPallete.blackLighter;
  @override
  Color get textOnAccent => AppPallete.white;

  @override
  Color get dividerPrimary => AppPallete.greyLighter;

  @override
  Color get backgroundSurface => AppPallete.white;
  @override
  Color get backgroundWindowBackground => AppPallete.greyLighter;
  @override
  Color get onSurface => AppPallete.blackPrimary;
  @override
  Color get onBackground => AppPallete.blackLight;

  @override
  Color get iconPrimary => AppPallete.blackPrimary;
  @override
  Color get iconSecondary => AppPallete.blackLight;
  @override
  Color get iconTertiary => AppPallete.blackLighter;
  @override
  Color get iconSystem => AppPallete.blackLight;
  @override
  Color get iconOnAccent => AppPallete.white;

  @override
  Color get overlayDefault => AppPallete.blackLighter;

  @override
  Color get strokePrimary => AppPallete.blackPrimary;
  @override
  Color get strokeSuccess => AppPallete.purplePrimary;
  @override
  Color get strokeAttention => AppPallete.purpleLight;
  @override
  Color get strokeError => AppPallete.purpleDark;

  const LightColorTheme();

  @override
  Color get textDarker => AppPallete.greyDark;

  @override
  Color get textOnAccentSecondary => AppPallete.greyLighter;

  @override
  ColorScheme get colorScheme => ColorScheme(
        primary: accent,
        primaryContainer: accentVariant,
        onPrimary: onAccent,
        secondary: secondaryAccent,
        secondaryContainer: secondaryAccentVariant,
        onSecondary: onSecondary,
        surface: backgroundSurface,
        onSurface: onSurface,
        error: strokeError,
        onError: onAccent,
        brightness: brightness,
      );
}

class DarkRedColorTheme extends LightColorTheme {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get accent => AppPallete.purplePrimary;
  @override
  Color get accentVariant => AppPallete.purpleLight;

  @override
  Color get backgroundSurface => AppPallete.white;
  @override
  Color get backgroundWindowBackground => AppPallete.greyLighter;
  @override
  Color get onSurface => AppPallete.blackPrimary;
  @override
  Color get onBackground => AppPallete.blackLight;

  const DarkRedColorTheme() : super();
}
