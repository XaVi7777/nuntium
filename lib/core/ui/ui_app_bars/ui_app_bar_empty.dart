import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UIEmptyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final SystemUiOverlayStyle? systemOverlayStyle;
  final Color? backgroundColor;
  final double? elevation;

  const UIEmptyAppbar({
    this.systemOverlayStyle,
    this.backgroundColor,
    this.elevation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation,
      systemOverlayStyle: systemOverlayStyle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
