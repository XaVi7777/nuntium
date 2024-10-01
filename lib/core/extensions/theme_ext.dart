import 'package:flutter/widgets.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';

extension ThemeExtension on BuildContext {
  AppTheme get appTheme => AppTheme.of(this);
}
