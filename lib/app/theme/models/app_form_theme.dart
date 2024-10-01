import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';
import 'package:nuntium/generated/fonts.gen.dart';

abstract class AppFormTheme {
  InputDecorationTheme get inputDecorationTheme;
}

class BaseFormTheme implements AppFormTheme {
  static const String _fontFamily = FontFamily.sFProText;
  static const Radius _borderRadius = Radius.circular(12);
  @override
  InputDecorationTheme get inputDecorationTheme => const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(_borderRadius),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(_borderRadius),
          borderSide: BorderSide(color: AppPallete.purplePrimary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(_borderRadius),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(_borderRadius),
          borderSide: BorderSide(color: Colors.red),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(_borderRadius),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        labelStyle: TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          height: 24 / 16,
          letterSpacing: 0,
          color: AppPallete.greyDark,
        ),
        hintStyle: TextStyle(
                  fontFamily: _fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          height: 24 / 16,
          letterSpacing: 0,
          color: AppPallete.greyLight,
        ),
        filled: true,
        fillColor: AppPallete.greyLighter,
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.grey,
        constraints: BoxConstraints(minHeight: 56),
        contentPadding: EdgeInsets.all(16),
      );
}
