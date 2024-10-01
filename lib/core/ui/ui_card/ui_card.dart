import 'package:flutter/material.dart';

class UICard extends StatelessWidget {
  final Color? color;
  final double? elevation;
  final ShapeBorder? shape;
  final EdgeInsetsGeometry? margin;
  final Clip? clipBehavior;
  final Widget? child;
  final bool borderOnForeground;
  final bool semanticContainer;

  const UICard({
    super.key,
    this.color,
    this.elevation,
    this.shape,
    this.margin,
    this.clipBehavior,
    this.child,
    this.borderOnForeground = true,
    this.semanticContainer = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: elevation,
      shape: shape,
      margin: margin,
      clipBehavior: clipBehavior,
      child: child,
      borderOnForeground: borderOnForeground,
      semanticContainer: semanticContainer,
    );
  }
}
