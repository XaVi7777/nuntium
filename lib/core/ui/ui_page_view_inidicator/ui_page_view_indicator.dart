import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';

class UIPageViewIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  final Color? activeColor;
  final Color? inactiveColor;
  final Duration animationDuration;
  final BoxDecoration? activeDecoration;
  final BoxDecoration? inactiveDecoration;
  final double activeWidth;
  final double inactiveWidth;
  final double activeHeight;
  final double activeBorderRadius;
  final double inactiveHeight;
  final double spacing; 

  const UIPageViewIndicator({
    required this.currentIndex,
    required this.itemCount,
    this.activeColor,
    this.inactiveColor,
    this.animationDuration = const Duration(milliseconds: 1000),
    this.activeDecoration,
    this.inactiveDecoration,
    this.activeWidth = 24.0,
    this.inactiveWidth = 8.0,
    this.activeHeight = 8.0,
    this.activeBorderRadius = 4.0,
    this.inactiveHeight = 8.0,
    this.spacing = 8.0, // Значение по умолчанию для отступа между элементами
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final effectiveActiveColor = activeColor ?? theme.colorTheme.accent;
    final effectiveInactiveColor =
        inactiveColor ?? theme.colorTheme.secondaryAccentVariant;

    final effectiveActiveDecoration = activeDecoration ??
        BoxDecoration(
          color: effectiveActiveColor,
          borderRadius: BorderRadius.circular(
            activeBorderRadius,
          ),
        );

    final effectiveInactiveDecoration = inactiveDecoration ??
        BoxDecoration(
          color: effectiveInactiveColor,
          borderRadius: BorderRadius.circular(
            inactiveWidth / 2,
          ),
        );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        itemCount * 2 - 1,
        (index) {
          if (index.isOdd) {
            return SizedBox.fromSize(
              size: Size(spacing, spacing),
            );
          } else {
            final itemIndex = index ~/ 2;
            final isActive = currentIndex == itemIndex;
            return AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              duration: animationDuration,
              width: isActive ? activeWidth : inactiveWidth,
              height: isActive ? activeHeight : inactiveHeight,
              decoration: isActive
                  ? effectiveActiveDecoration
                  : effectiveInactiveDecoration,
            );
          }
        },
      ),
    );
  }
}
