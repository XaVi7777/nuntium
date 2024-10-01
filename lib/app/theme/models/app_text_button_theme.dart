import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';
import 'package:nuntium/generated/fonts.gen.dart';

abstract class AppTextButtonTheme {
  TextButtonThemeData get theme;
}

class BaseTextButtonTheme implements AppTextButtonTheme {
  static const String _fontFamily = FontFamily.sFProText;

  @override
  TextButtonThemeData get theme => TextButtonThemeData(
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all<Size>(const Size.fromHeight(56)),
          padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
          foregroundColor:
              WidgetStateProperty.all<Color>(AppPallete.blackPrimary),
          textStyle: WidgetStateProperty.all<TextStyle>(
            const TextStyle(
              fontFamily: _fontFamily,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
          elevation: WidgetStateProperty.all<double>(0),
        ),
      );
}
