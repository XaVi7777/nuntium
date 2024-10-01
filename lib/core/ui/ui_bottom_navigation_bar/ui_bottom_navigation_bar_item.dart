import 'package:flutter/widgets.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/core/ui/ui.dart';

class UIBottomNavigationBarItem extends StatelessWidget {
  final bool isSelected;
  final String iconPath;
  final Color? iconColor;
  final Color? selectedIconColor;
  final Size iconSize;
  final Size? iconWrapperSize;
  final void Function()? onTap;

  const UIBottomNavigationBarItem({
    required this.isSelected,
    required this.iconPath,
    this.iconColor,
    this.selectedIconColor,
    this.iconSize = const Size(18, 20),
    this.iconWrapperSize,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final iconWidget = UISVGIcon(
      assetName: iconPath,
      color: _getIconColor(appTheme),
      width: iconSize.width,
      height: iconSize.height,
    );

    return UIInkWell(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: iconWidget,
      ),
      onTap: onTap,
    );
  }

  Color _getIconColor(AppTheme appTheme) {
    final effectiveIconColor =
        iconColor ?? appTheme.bottomNavigationBarTheme.iconColor;
    final effectiveActiveIconColor = selectedIconColor ??
        appTheme.bottomNavigationBarTheme.selectedIconColor;
    return isSelected ? effectiveActiveIconColor : effectiveIconColor;
  }
}
