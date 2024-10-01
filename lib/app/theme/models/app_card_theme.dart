import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/models/app_pallete.dart';

abstract class AppCardTheme {
  CardTheme get theme;
}

class BaseCardTheme implements AppCardTheme {
  @override
  CardTheme get theme => CardTheme(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: AppPallete.greyLighter,
          ),
        ),
      );
}
