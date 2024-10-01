import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/permissions/presentation/bloc/permissions_bloc.dart';
import 'package:nuntium/features/permissions/presentation/bloc/permissions_bloc_models.dart';
import 'package:nuntium/generated/assets.gen.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class PermissionsContent extends StatelessWidget {
  const PermissionsContent({super.key});

  static const EdgeInsets _horizontalPadding =
      EdgeInsets.symmetric(horizontal: 40);
  static const EdgeInsets _buttonPadding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;

    return Column(
      children: [
        const Spacer(),
        SizedBox.fromSize(
          size: UISizes.hugeIcon,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: appTheme.colorTheme.secondaryAccentVariant,
              shape: BoxShape.circle,
            ),
            child: UISVGIcon(
              assetName: Assets.svgCompiled.bell,
              width: UISizes.hugeIcon.width,
              height: UISizes.hugeIcon.height,
            ),
          ),
        ),
        UISpacers.largeSpacing,
        LocalizedText(
          textKey: LocaleKeys.notifications_title,
          style: appTheme.textTheme.headlineMedium,
        ),
        UISpacers.mediumSpacing,
        Padding(
          padding: _horizontalPadding,
          child: LocalizedText(
            textKey: LocaleKeys.notifications_description,
            style: appTheme.textTheme.descriptionMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
        Padding(
          padding: _buttonPadding,
          child: UIButton(
            text: LocaleKeys.notifications_action,
            onPressed: () => _onPressNext(context),
          ),
        ),
        UISpacers.mediumSpacing,
        Padding(
          padding: _buttonPadding,
          child: UITextButton(
            onPressed: () => _onPressSkip(context),
            child: const LocalizedText(textKey: LocaleKeys.skip),
          ),
        ),
        UISpacers.mediumSpacing,
      ],
    );
  }

  void _onPressNext(BuildContext context) {
    context
        .read<PermissionsBloc>()
        .add(const PermissionsEvent.requestNotificationPermission());
  }

  void _onPressSkip(BuildContext context) {
    context
        .read<PermissionsBloc>()
        .add(const PermissionsEvent.setHasBeenRequested());
  }
}
