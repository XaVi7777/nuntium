import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';

abstract class AppBottomSheetTheme {
  Color get backgroundColor;

  BottomSheetThemeData get theme;
}

class BaseAppBottomSheetTheme implements AppBottomSheetTheme {
  @override
  Color get backgroundColor => AppPallete.white;

  @override
  BottomSheetThemeData get theme => BottomSheetThemeData(
        backgroundColor: backgroundColor,
      );
}
