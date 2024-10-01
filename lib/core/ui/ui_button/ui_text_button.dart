import 'package:flutter/material.dart';

class UITextButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final ButtonStyle? style;

  const UITextButton({
    required this.child,
    required this.onPressed,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
      style: style,
    );
  }
}
