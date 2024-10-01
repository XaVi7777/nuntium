import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/app/theme/app_theme_provider_widget.dart';
import 'package:nuntium/app/theme/models/app_bar_theme.dart';
import 'package:nuntium/app/theme/models/app_bottom_navigation_bar_theme.dart';
import 'package:nuntium/app/theme/models/app_bottom_sheet_theme.dart';
import 'package:nuntium/app/theme/models/app_card_theme.dart';
import 'package:nuntium/app/theme/models/app_chip_theme.dart';
import 'package:nuntium/app/theme/models/app_color_theme.dart';
import 'package:nuntium/app/theme/models/app_form_theme.dart';
import 'package:nuntium/app/theme/models/app_list_tile_theme.dart';
import 'package:nuntium/app/theme/models/app_switch_theme.dart';
import 'package:nuntium/app/theme/models/app_text_theme.dart';
import 'package:nuntium/app/theme/models/export.dart';

part 'app_theme.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  const factory AppTheme({
    required AppColorTheme colorTheme,
    required AppAppBarTheme appBarTheme,
    required AppTextTheme textTheme,
    required AppFormTheme formTheme,
    required AppBottomNavigationBarTheme bottomNavigationBarTheme,
    required AppListTileTheme listTileTheme,
    required AppSwitchTheme switchTheme,
    required AppBottomSheetTheme bottomSheetTheme,
    required AppTextButtonTheme textButtonTheme,
    required AppChipTheme chipTheme,
    required AppCardTheme cardTheme,
  }) = _AppTheme;

  static AppTheme of(BuildContext context) =>
      AppThemeProvider.of(context).theme;
}

@freezed
class AppThemeEvent with _$AppThemeEvent {
  const factory AppThemeEvent.setDarkTheme() = AppThemeEventSetDarkTheme;
  const factory AppThemeEvent.setLightTheme() = AppThemeEventSetLightTheme;
}
