import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/core/ui/ui_base_snackbar/snack_bar_content_state.dart';

class SnackbarContent extends StatefulWidget {
  final OverlayEntry overlayEntry;
  final String text;
  final String? actionLabel;
  final VoidCallback? actionPressedCallback;
  final AppTheme appTheme;
  final double verticalOffset;

  const SnackbarContent({
    required this.overlayEntry,
    required this.text,
    required this.appTheme,
    required this.verticalOffset,
    super.key,
    this.actionLabel,
    this.actionPressedCallback,
  });

  @override
  SnackbarContentState createState() => SnackbarContentState();
}
