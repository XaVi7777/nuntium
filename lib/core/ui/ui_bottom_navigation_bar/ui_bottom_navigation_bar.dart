import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/core/ui/ui_bottom_navigation_bar/ui_bottom_navigation_bar_item.dart';

class UIBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap;
  final List<UIBottomNavigationBarItem> items;
  final double height;
  final BoxDecoration? decoration;
  final EdgeInsets padding;

  const UIBottomNavigationBar({
    required this.currentIndex,
    required this.items,
    super.key,
    this.height = 62,
    this.onTap,
    this.decoration,
    this.padding = const EdgeInsets.symmetric(horizontal: 44),
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Container(
      width: double.infinity,
      height: height,
      padding: padding,
      decoration: decoration ??
          BoxDecoration(
            border: Border(
              top: BorderSide(
                color: appTheme.bottomNavigationBarTheme.borderColor,
              ),
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
    );
  }
}
