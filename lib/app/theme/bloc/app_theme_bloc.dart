import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/app/theme/models/app_bar_theme.dart';
import 'package:nuntium/app/theme/models/app_bottom_navigation_bar_theme.dart';
import 'package:nuntium/app/theme/models/app_bottom_sheet_theme.dart';
import 'package:nuntium/app/theme/models/app_card_theme.dart';
import 'package:nuntium/app/theme/models/app_chip_theme.dart';
import 'package:nuntium/app/theme/models/app_color_theme.dart';
import 'package:nuntium/app/theme/models/app_form_theme.dart';
import 'package:nuntium/app/theme/models/app_list_tile_theme.dart';
import 'package:nuntium/app/theme/models/app_switch_theme.dart';
import 'package:nuntium/app/theme/models/app_text_button_theme.dart';
import 'package:nuntium/app/theme/models/app_text_theme.dart';

@singleton
class AppThemeBloc extends Bloc<AppThemeEvent, AppTheme> {
  AppThemeBloc()
      : super(AppTheme(
          colorTheme: const LightColorTheme(),
          textTheme: BaseTextTheme(),
          formTheme: BaseFormTheme(),
          bottomNavigationBarTheme: BaseBottomNavigationBarTheme(),
          listTileTheme: BaseListTileTheme(),
          switchTheme: BaseSwitchTheme(),
          appBarTheme: BaseAppBarTheme(),
          bottomSheetTheme: BaseAppBottomSheetTheme(),
          textButtonTheme: BaseTextButtonTheme(),
          chipTheme: BaseChipTheme(),
          cardTheme: BaseCardTheme(),
        )) {
    on<AppThemeEventSetDarkTheme>(_setDarkTheme);
    on<AppThemeEventSetLightTheme>(_setLightTheme);
  }

  FutureOr<void> _setDarkTheme(
      AppThemeEventSetDarkTheme event, Emitter<AppTheme> emit) {
    emit(state.copyWith(colorTheme: const DarkRedColorTheme()));
  }

  FutureOr<void> _setLightTheme(
      AppThemeEventSetLightTheme event, Emitter<AppTheme> emit) {
    emit(state.copyWith(colorTheme: const LightColorTheme()));
  }
}
