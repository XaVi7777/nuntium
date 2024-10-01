import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/core/ui/ui_base_snackbar/snack_bar_content.dart';

class UIBaseSnackbar {
  static final List<OverlayEntry> _activeOverlays = [];

  static void show({
    required BuildContext context,
    required String text,
    String? actionLabel,
    VoidCallback? actionPressedCallback,
  }) {
    final appTheme = AppTheme.of(context);
    final overlay = Overlay.of(context);
    late OverlayEntry overlayEntry;

    final verticalOffset = 50 + (_activeOverlays.length * 50);

    overlayEntry = OverlayEntry(
      builder: (context) {
        return SnackbarContent(
          overlayEntry: overlayEntry,
          text: text,
          actionLabel: actionLabel,
          actionPressedCallback: actionPressedCallback,
          appTheme: appTheme,
          verticalOffset: verticalOffset.toDouble(),
        );
      },
    );

    _activeOverlays.add(overlayEntry);
    overlay.insert(overlayEntry);
  }

  static void removeOverlay(OverlayEntry overlayEntry) {
    _activeOverlays.remove(overlayEntry);
  }
}
