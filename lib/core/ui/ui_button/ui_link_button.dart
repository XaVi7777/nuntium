import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';

class UILinkButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final Color? textColor;
  final bool isUnderlined;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry alignment;
  final Widget? textWidget;

  const UILinkButton({
    this.text,
    this.onPressed,
    this.textStyle,
    this.textColor,
    this.isUnderlined = false,
    this.padding,
    this.alignment = Alignment.centerLeft,
    this.textWidget,
    super.key,
  }) : assert((text == null) != (textWidget == null),
            'Either text or textWidget must be provided, but not both');

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final effectiveTextStyle =
        textStyle ?? appTheme.textTheme.linkButtonTextMedium;

    final content = textWidget ??
        Text(
          text!.tr(),
          style: effectiveTextStyle.copyWith(
            color: textColor,
            decoration:
                isUnderlined ? TextDecoration.underline : TextDecoration.none,
          ),
        );

    return GestureDetector(
      onTap: onPressed,
      child: content,
    );
  }
}
