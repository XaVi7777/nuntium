import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/generated/assets.gen.dart';

class UIAppBar extends StatelessWidget implements PreferredSizeWidget {
  final SystemUiOverlayStyle? systemOverlayStyle;
  final Color? backgroundColor;
  final double? elevation;
  final Widget? title;
  final TextStyle? descriptionStyle;
  final List<Widget>? actions;
  final Widget? leading;
  final bool? centerTitle;
  final double height;
  final bool showBack;
  final Widget? titleDivider;

  const UIAppBar({
    this.title,
    this.centerTitle,
    this.height = kToolbarHeight,
    this.showBack = false,
    this.systemOverlayStyle,
    this.backgroundColor,
    this.elevation,
    this.descriptionStyle,
    this.actions,
    this.leading,
    this.titleDivider,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    final leadingWidget = leading ??
        (showBack
            ? UIInkWell(
                onTap: () => context.maybePop(),
                child: UISVGIcon(
                  assetName: Assets.svgCompiled.left,
                  color: appTheme.colorTheme.onBackground,
                  width: 16,
                  height: 16,
                ),
              )
            : null);

    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation,
      title: title,
      actions: actions,
      leading: leadingWidget,
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      titleTextStyle: appTheme.textTheme.headlineMedium.copyWith(height: 0),
      toolbarHeight: height + 20,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
