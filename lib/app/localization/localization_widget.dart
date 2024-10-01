import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/widgets.dart';
import 'package:nuntium/app/localization/localizations.dart';

class LocalizationWidget extends StatelessWidget {
  final Widget child;

  const LocalizationWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        SupportedLocales.ru,
        SupportedLocales.us,
      ],
      fallbackLocale: SupportedLocales.us,
      path: 'assets/translations',
      assetLoader: const JsonAssetLoader(),
      child: child,
    );
  }
}
