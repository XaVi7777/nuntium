import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc_models.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/onboarding/presentation/ui/onboarding_carousel.dart';

import 'package:nuntium/generated/translations/locale_keys.g.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;

    return Column(
      children: [
        const Spacer(),
        const OnboardingCarousel(),
        const Spacer(),
        LocalizedText(
          textKey: LocaleKeys.first_to_know,
          style: appTheme.textTheme.headlineMedium,
        ),
        UISpacers.mediumSpacing,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: LocalizedText(
            textKey: LocaleKeys.first_to_know_description,
            style: appTheme.textTheme.descriptionMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: UIButton(
            text: LocaleKeys.first_to_know_action,
            onPressed: () => _onPressNext(context),
          ),
        ),
        UISpacers.mediumSpacing,
      ],
    );
  }

  void _onPressNext(BuildContext context) {
    context
        .read<NavigationBloc>()
        .add(const NavigationEvent.replaceWith(GetStartedRoute()));
  }
}
