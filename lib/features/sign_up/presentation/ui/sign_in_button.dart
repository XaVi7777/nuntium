
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc_models.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    final textTheme = appTheme.textTheme;
    return UILinkButton(
      onPressed: () => _onPressed(context),
      textWidget: RichText(
        text: TextSpan(
            text: LocaleKeys.already_have_account.tr(),
            children: [
              TextSpan(
                text: ' ${LocaleKeys.sign_in_sign_in.tr()}',
                style: textTheme.linkButtonTextMedium,
              ),
            ],
            style: textTheme.linkButtonTextMedium
                .copyWith(color: appTheme.colorTheme.secondaryAccent)),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    context.read<NavigationBloc>().add(const NavigationEvent.pop());
  }
}
