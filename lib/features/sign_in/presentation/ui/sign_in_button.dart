import 'package:flutter/material.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';

class SignInButton extends StatelessWidget {
  final String text;
  final String? iconAssetName;
  final VoidCallback onPressed;

  const SignInButton({
    required this.text,
    required this.onPressed,
    this.iconAssetName,
    super.key,
  });

  static const FontWeight _buttonFontWeight = FontWeight.w600;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    final colorTheme = appTheme.colorTheme;
    final buttonBorderColor = colorTheme.dividerPrimary;
    final buttonTextColor = colorTheme.textDarker;
    return UIOutlinedButton(
      icon: iconAssetName != null
          ? UISVGIcon(
              assetName: iconAssetName!,
            )
          : null,
      text: text,
      borderColor: buttonBorderColor,
      textColor: buttonTextColor,
      fontWeight: _buttonFontWeight,
      onPressed: onPressed,
    );
  }
}
