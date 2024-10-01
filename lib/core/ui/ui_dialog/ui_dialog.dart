import 'package:flutter/material.dart';
import 'package:nuntium/core/ui/ui_button/ui_text_button.dart';

class UIDialog {
  static Future<T?> showBaseDialog<T>(
    BuildContext context, {
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) {
    return showDialog<T>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
    );
  }

  static Future<bool?> showConfirmDialog(
    BuildContext context, {
    required Widget confirmText,
    required Widget cancelText,
    Widget? title,
    Widget? content,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
      builder: (context) {
        return AlertDialog(
          title: title,
          content: content,
          actions: [
            UITextButton(
              onPressed: () => onConfirm?.call(),
              child: confirmText,
            ),
            UITextButton(
              onPressed: () => onCancel?.call(),
              child: cancelText,
            ),
          ],
        );
      },
    );
  }
}
