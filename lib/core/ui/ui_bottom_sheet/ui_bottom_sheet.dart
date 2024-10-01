import 'package:flutter/material.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/ui/ui_bottom_sheet/ui_bottom_sheet_header.dart';

class UIBottomSheet {
  static void showBaseModalBottomSheet(
    BuildContext context, {
    required WidgetBuilder builder,
  }) {
    showModalBottomSheet(
      context: context,
      builder: builder,
    );
  }

  static void showConfirmModalBottomSheet(
    BuildContext context, {
    String? title,
    String confirmText = '',
    String canceltext = '',
    VoidCallback? onCancel,
    VoidCallback? onConfirm,
  }) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(
              16,
              12,
              16,
              34,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (title?.isNotEmpty ?? false) ...[
                  UiBottomSheetHeader(text: title!),
                  const SizedBox(
                    height: 12,
                  ),
                ],
                UITextButton(
                  onPressed: () => onConfirm?.call(),
                  child: Text(
                    confirmText,
                  ),
                ),
                UITextButton(
                  onPressed: () => onCancel?.call(),
                  child: Text(
                    canceltext,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
