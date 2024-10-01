import 'package:flutter/material.dart';
import 'package:nuntium/core/ui/ui_loader/ui_loader.dart';

class UIOverlayLoader {
  static final UIOverlayLoader _instance = UIOverlayLoader._internal();

  factory UIOverlayLoader() => _instance;

  UIOverlayLoader._internal();

  OverlayEntry? _overlayEntry;

  void show(BuildContext context) {
    if (_overlayEntry != null) {
      return;
    }

    _overlayEntry = OverlayEntry(
      builder: (context) => const UILoader(),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
