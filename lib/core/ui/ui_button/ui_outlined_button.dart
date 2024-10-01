import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';

class UIOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? textColor;
  final double? fontSize;
  final double? paddingVertical;
  final double? paddingHorizontal;
  final double? borderRadius;
  final double? width;
  final double? height;
  final FontWeight fontWeight;
  final Color? borderColor;
  final double? borderWidth;
  final Widget? icon;
  final bool fullWidth;

  const UIOutlinedButton({
    required this.text,
    this.onPressed,
    this.textColor,
    this.fontSize,
    this.paddingVertical,
    this.paddingHorizontal,
    this.borderRadius,
    this.width,
    this.height = 56,
    this.fontWeight = FontWeight.normal,
    this.borderColor,
    this.borderWidth,
    this.icon,
    this.fullWidth = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context); 

    final effectiveTextColor = textColor ?? appTheme.colorTheme.textOnAccent;
    final effectiveBorderColor = borderColor ?? appTheme.colorTheme.accent;

    final buttonChild = ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          Colors.transparent,
        ),
        foregroundColor: WidgetStateProperty.all<Color>(
          Colors.transparent,
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            vertical: paddingVertical ?? 12.0,
            horizontal: paddingHorizontal ?? 16.0,
          ),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
            side: BorderSide(
              color: effectiveBorderColor,
              width: borderWidth ?? 2.0,
            ),
          ),
        ),
        shadowColor: WidgetStateProperty.all<Color>(
          Colors.transparent,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) icon!,
          if (icon != null) const SizedBox(width: 8),
          Expanded(
            child: Text(
              text.tr(),
              textAlign: TextAlign.center,
              style: appTheme.textTheme.buttonText.copyWith(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: effectiveTextColor,
              ),
            ),
          ),
        ],
      ),
    );

    return fullWidth
        ? SizedBox(
            width: width ?? double.infinity,
            height: height,
            child: buttonChild,
          )
        : buttonChild;
  }
}
