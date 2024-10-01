import 'package:flutter/widgets.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';

abstract class AppBottomNavigationBarTheme {
  Color get iconColor;
  Color get selectedIconColor;
  Color get borderColor;
}

class BaseBottomNavigationBarTheme implements AppBottomNavigationBarTheme {
  @override
  Color get selectedIconColor => AppPallete.purplePrimary;

  @override
  Color get iconColor => AppPallete.greyLight;
  
  @override
  Color get borderColor => AppPallete.greyLight;
}
