import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/select_language/presentation/ui/select_language_content.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class SelectLanguagePage extends StatelessWidget {
  const SelectLanguagePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;

    return UIPageWrapper(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      appBar: const UIAppBar(
        title: LocalizedText(textKey: LocaleKeys.language),
        showBack: true,
      ),
      child: const SelectLanguageContent(),
    );
  }
}
