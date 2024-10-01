import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class AppAppBarTheme {
  SystemUiOverlayStyle get systemOverlayStyle;

  Color get backgroundColor;

  double get elevation;

  bool get centerTitle;

  AppBarTheme get theme;
}

class BaseAppBarTheme implements AppAppBarTheme {
  @override
  SystemUiOverlayStyle get systemOverlayStyle => const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      );

  @override
  Color get backgroundColor => Colors.transparent;

  @override
  double get elevation => 0;
  
  @override
  bool get centerTitle => true;
  
  @override
  AppBarTheme get theme => AppBarTheme(
        systemOverlayStyle: systemOverlayStyle,
        backgroundColor: backgroundColor,
        elevation: elevation,
        centerTitle: centerTitle,
      );
}
