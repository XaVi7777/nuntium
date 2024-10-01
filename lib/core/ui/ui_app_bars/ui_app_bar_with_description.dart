import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui_app_bars/ui_app_bar_title.dart';
import 'package:nuntium/core/ui/ui_svg_icon/ui_svg_icon.dart';
import 'package:nuntium/generated/assets.gen.dart';

class UIAppBarWithDescription extends StatelessWidget
    implements PreferredSizeWidget {
  final SystemUiOverlayStyle? systemOverlayStyle;
  final Color? backgroundColor;
  final double? elevation;
  final Widget title;
  final String description;
  final TextStyle? descriptionStyle;
  final List<Widget>? actions;
  final Widget? leading;
  final bool? centerTitle;
  final double height;
  final bool showBack;
  final Widget? titleDivider;

  const UIAppBarWithDescription({
    required this.title,
    required this.description,
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
            ? IconButton(
                onPressed: () => context.maybePop(),
                icon: UISVGIcon(
                  assetName: Assets.svgCompiled.left,
                  color: appTheme.colorTheme.onBackground,
                  width: 12,
                  height: 12,
                ),
              )
            : null);

    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation,
      title: UIAppBarTitle(
        title: title,
        description: description,
        descriptionStyle: descriptionStyle,
        divider: titleDivider,
      ),
      actions: actions,
      leading: leadingWidget,
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      titleTextStyle: appTheme.textTheme.headlineMedium,
      toolbarHeight: height + 20,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height + 20);
}
