import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';

class UILoader extends StatelessWidget {
  final Color? color;
  final double size;
  final double strokeWidth;
  final Color? backgroundColor;
  final bool showBackground;
  final double opacity;

  const UILoader({
    super.key,
    this.color,
    this.size = 50.0,
    this.strokeWidth = 4.0,
    this.backgroundColor,
    this.showBackground = true,
    this.opacity = 0.5,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    final defaultColor = color ?? colorTheme.accent;
    final defaultBackgroundColor =
        backgroundColor ?? colorTheme.backgroundSurface;

    final loaderWidget = SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(defaultColor),
        strokeWidth: strokeWidth,
      ),
    );

    if (!showBackground) return loaderWidget;

    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: opacity,
          child: Container(
            color: defaultBackgroundColor,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        loaderWidget,
      ],
    );
  }

}
