import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';

class UISlidableAction extends StatelessWidget {
  final Widget child;
  final SlidableActionCallback onPressed;
  final int flex;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool autoClose;
  final BorderRadius borderRadius;
  final EdgeInsets? padding;

  const UISlidableAction({
    required this.child,
    required this.onPressed,
    this.flex = 1,
    this.backgroundColor,
    this.foregroundColor,
    this.autoClose = true,
    this.borderRadius = BorderRadius.zero,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return CustomSlidableAction(
      flex: flex,
      backgroundColor: backgroundColor ?? theme.colorTheme.accent,
      foregroundColor: foregroundColor,
      autoClose: autoClose,
      borderRadius: borderRadius,
      padding: padding,
      onPressed: onPressed,
      child: child,
    );
  }
}
