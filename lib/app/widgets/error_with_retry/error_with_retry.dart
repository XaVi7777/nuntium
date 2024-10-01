import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/core/extensions/list_divide_ext.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class ErrorWithRetry extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onRetry;
  final String tryAgainButtonText;
  final bool isTextButton;

  const ErrorWithRetry({
    required this.onRetry,
    this.errorMessage = LocaleKeys.something_went_wrong,
    this.tryAgainButtonText = LocaleKeys.try_again,
    this.isTextButton = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LocalizedText(
              textKey: errorMessage,
              style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            if (isTextButton)
              UITextButton(
                child: LocalizedText(
                  textKey: tryAgainButtonText,
                  style: theme.textTheme.bodyMedium,
                ),
                onPressed: onRetry,
              )
            else
              UIButton(
                text: tryAgainButtonText.tr(),
                onPressed: onRetry,
              )
          ].divide(UISpacers.mediumSpacing),
        ),
      ),
    );
  }
}
