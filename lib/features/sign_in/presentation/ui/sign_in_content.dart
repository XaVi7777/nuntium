import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/content_padding/content_padding.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui_list_tile/export.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';
import 'package:nuntium/features/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:nuntium/features/sign_in/presentation/bloc/sign_in_bloc_models.dart';
import 'package:nuntium/features/sign_in/presentation/ui/sign_in_button.dart';
import 'package:nuntium/features/sign_in/presentation/ui/sign_in_form.dart';
import 'package:nuntium/features/sign_in/presentation/ui/sign_up_button.dart';
import 'package:nuntium/generated/assets.gen.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({
    super.key,
  });

  static const _spacer = Expanded(
    child: SizedBox(
      height: 12,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    final colorTheme = appTheme.colorTheme;
    final bodyMedium = appTheme.textTheme.bodyMedium.copyWith(
      color: colorTheme.secondaryAccent,
    );

    return ContentPadding(
      child: UIScrollableContent(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UISpacers.smallSpacing,
            LocalizedText(
              textKey: LocaleKeys.sign_in_description,
              style: appTheme.textTheme.descriptionMedium,
            ),
            UISpacers.largeSpacing,
            const SignInForm(),
            // Not implemented
            // UISpacers.mediumSpacing,
            // const ForgotPasswordButton(),
            _spacer,
            LocalizedText(
              textKey: LocaleKeys.sign_in_or,
              style: bodyMedium,
              textAlign: TextAlign.center,
            ),
            _spacer,
            SignInButton(
              text: LocaleKeys.sign_in_sign_in_with_google,
              iconAssetName: Assets.svgCompiled.googleLogo,
              onPressed: () => _onPressedSignIn(
                context,
                SignInMethod.google,
              ),
            ),
            UISpacers.mediumSpacing,
            const SignUpButton(),
            UISpacers.mediumSpacing,
          ],
        ),
      ),
    );
  }

  void _onPressedSignIn(BuildContext context, SignInMethod signInMethod) {
    context.read<SignInBloc>().add(SignInEvent.signIn(signInMethod));
  }
}
