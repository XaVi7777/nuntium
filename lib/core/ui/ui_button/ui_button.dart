import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';

class UIButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? textColor;
  final Color? buttonColor;
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

  const UIButton({
    required this.text,
    this.onPressed,
    super.key,
    this.textColor,
    this.buttonColor,
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
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final isDisabled = onPressed == null;

    final effectiveButtonColor = buttonColor ?? appTheme.colorTheme.accent;
    final effectiveTextColor = textColor ?? appTheme.colorTheme.textOnAccent;

    final buttonChild = ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          effectiveButtonColor,
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
          ),
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
            child: Opacity(
              opacity: isDisabled ? 0.5 : 1.0,
              child: buttonChild,
            ),
          )
        : Opacity(
            opacity: isDisabled ? 0.5 : 1.0,
            child: buttonChild,
          );
  }
}
