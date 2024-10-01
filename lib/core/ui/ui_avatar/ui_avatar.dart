import 'package:flutter/material.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui_svg_icon/ui_svg_icon.dart';
import 'package:nuntium/generated/assets.gen.dart';

class UIAvatar extends StatelessWidget {
  final Widget? child;
  final double radius;

  const UIAvatar({
    this.child,
    this.radius = 36,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return CircleAvatar(
      radius: radius,
      child: ClipOval(
        child: child ??
            DecoratedBox(
              decoration: BoxDecoration(color: theme.colorTheme.accent),
              child: Center(
                child: UISVGIcon(
                  width: radius ,
                  height: radius ,
                  assetName: Assets.svgCompiled.logoIcon,
                ),
              ),
            ),
      ),
    );
  }
}
