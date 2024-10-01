import 'package:flutter/material.dart';

class UIInkWell extends StatelessWidget {
  final Widget? child;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onDoubleTap;
  final GestureLongPressCallback? onLongPress;
  final ValueChanged<bool>? onHighlightChanged;
  final ValueChanged<bool>? onHover;
  final MouseCursor? mouseCursor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final InteractiveInkFeatureFactory? splashFactory;
  final BorderRadius? borderRadius;
  final ShapeBorder? customBorder;
  final bool? enableFeedback;
  final bool? excludeFromSemantics;
  final FocusNode? focusNode;
  final bool? canRequestFocus;
  final ValueChanged<bool>? onFocusChange;
  final bool? autofocus;

  const UIInkWell({
    super.key,
    this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.onHighlightChanged,
    this.onHover,
    this.mouseCursor,
    this.focusColor = Colors.transparent,
    this.hoverColor = Colors.transparent,
    this.highlightColor = Colors.transparent,
    this.splashColor = Colors.transparent,
    this.splashFactory,
    this.borderRadius,
    this.customBorder,
    this.enableFeedback,
    this.excludeFromSemantics,
    this.focusNode,
    this.canRequestFocus,
    this.onFocusChange,
    this.autofocus,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: child,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onHighlightChanged: onHighlightChanged,
      onHover: onHover,
      mouseCursor: mouseCursor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      splashFactory: splashFactory,
      borderRadius: borderRadius,
      customBorder: customBorder,
      enableFeedback: enableFeedback ?? true,
      excludeFromSemantics: excludeFromSemantics ?? false,
      focusNode: focusNode,
      canRequestFocus: canRequestFocus ?? true,
      onFocusChange: onFocusChange,
      autofocus: autofocus ?? false,
    );
  }
}
