import 'package:flutter/material.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui_button/ui_link_button.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    final linkButtonTextcolor = context.appTheme.colorTheme.textDarker;
    return Align(
      alignment: Alignment.centerRight,
      child: UILinkButton(
        text: LocaleKeys.sign_in_forgot_password,
        textColor: linkButtonTextcolor,
        onPressed: () => _onPressed(context),
      ),
    );
  }

  void _onPressed(BuildContext context) {}
}
