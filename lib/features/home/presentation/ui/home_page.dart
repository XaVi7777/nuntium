import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:nuntium/app/widgets/snackbar_manager/snackbar_manager.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/home/presentation/ui/home_content.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return UIPageWrapper(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorTheme.backgroundSurface,
      appBar: UIAppBarWithDescription(
        title: Text(LocaleKeys.home_title.tr()),
        description: LocaleKeys.home_description.tr(),
        centerTitle: false,
      ),
      child: const SnackbarManager(child: HomeContent()),
    );
  }
}
