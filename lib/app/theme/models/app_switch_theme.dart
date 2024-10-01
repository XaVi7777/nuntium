import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';

abstract class AppSwitchTheme {
  WidgetStateProperty<Color?>? get thumbColor;
  WidgetStateProperty<Color?>? get trackColor;
  WidgetStateProperty<Color?>? get trackOutlineColor;
  WidgetStateProperty<double?>? get trackOutlineWidth;
  MaterialTapTargetSize? get materialTapTargetSize;
  WidgetStateProperty<MouseCursor?>? get mouseCursor;
  WidgetStateProperty<Color?>? get overlayColor;
  double? get splashRadius;
  WidgetStateProperty<Icon?>? get thumbIcon;

  SwitchThemeData get theme;
}

class BaseSwitchTheme implements AppSwitchTheme {
  @override
  WidgetStateProperty<Color?>? get thumbColor =>
      WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppPallete.white;
        }
        return AppPallete.white;
      });

  @override
  WidgetStateProperty<Color?>? get trackColor =>
      WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppPallete.purplePrimary;
        }
        return AppPallete.greyLight;
      });

  @override
  WidgetStateProperty<Color?>? get trackOutlineColor => null;

  @override
  WidgetStateProperty<double?>? get trackOutlineWidth => null;

  @override
  MaterialTapTargetSize? get materialTapTargetSize => null;

  @override
  WidgetStateProperty<MouseCursor?>? get mouseCursor => null;

  @override
  WidgetStateProperty<Color?>? get overlayColor => null;

  @override
  double? get splashRadius => null;

  @override
  WidgetStateProperty<Icon?>? get thumbIcon => null;

  @override
  SwitchThemeData get theme => SwitchThemeData(
        thumbColor: thumbColor,
        trackColor: trackColor,
        trackOutlineColor: trackOutlineColor,
        trackOutlineWidth: trackOutlineWidth,
        materialTapTargetSize: materialTapTargetSize,
        mouseCursor: mouseCursor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        thumbIcon: thumbIcon,
      );
}
