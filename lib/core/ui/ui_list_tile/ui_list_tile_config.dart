import 'package:flutter/material.dart';

class UIListTileConfig <V>{
  final String? title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final V? value;

  const UIListTileConfig({
    this.title,
    this.trailing,
    this.onTap,
    this.value,
  });
}
