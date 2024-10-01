import 'package:flutter/material.dart';
import 'package:nuntium/app/widgets/content_padding/content_padding.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/sign_up/presentation/ui/sign_in_button.dart';
import 'package:nuntium/features/sign_up/presentation/ui/sign_up_form.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({super.key});

  static const _spacer = Expanded(
    child: SizedBox(
      height: 12,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    final textTheme = appTheme.textTheme;
    return ContentPadding(
      child: UIScrollableContent(
        child: Column(
          children: [
            LocalizedText(
              textKey: LocaleKeys.sign_up_description,
              style: textTheme.descriptionMedium,
            ),
            UISpacers.largeSpacing,
            const SignUpForm(),
            _spacer,
            const SignInButton(),
            UISpacers.mediumSpacing,
          ],
        ),
      ),
    );
  }
}
