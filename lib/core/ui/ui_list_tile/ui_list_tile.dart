import 'package:flutter/material.dart';

class UIListTile extends StatelessWidget {
  final Widget? title;
  final Color? tileColor;
  final TextStyle? titleTextStyle;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? trailing;
  final Widget? leading;
  final VoidCallback? onTap;

  const UIListTile({
    this.title,
    this.tileColor,
    this.titleTextStyle,
    this.contentPadding,
    this.trailing,
    this.leading,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
      contentPadding: contentPadding,
      tileColor: tileColor,
      title: title,
      titleTextStyle: titleTextStyle,
      dense: false,
      trailing: trailing,
    );
  }
}
