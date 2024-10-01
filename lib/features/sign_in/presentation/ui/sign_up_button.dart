import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc_models.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui_button/ui_link_button.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return Center(
      child: UILinkButton(
        onPressed: () => _onPressed(context),
        textWidget: RichText(
          text: TextSpan(
            text: LocaleKeys.sign_in_dont_have_account.tr(),
            children: [
              TextSpan(
                text: ' ${LocaleKeys.sign_in_sign_up.tr()}',
                style: appTheme.textTheme.linkButtonTextMedium,
              ),
            ],
            style: appTheme.textTheme.linkButtonTextMedium.copyWith(
              color: appTheme.colorTheme.secondaryAccent,
            ),
          ),
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    context
        .read<NavigationBloc>()
        .add(const NavigationEvent.push(SignUpRoute()));
  }
}
