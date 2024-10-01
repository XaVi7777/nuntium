import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc_models.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/app/widgets/snackbar_manager/snackbar_manager.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/permissions/presentation/bloc/permissions_bloc.dart';
import 'package:nuntium/features/permissions/presentation/bloc/permissions_bloc_models.dart';
import 'package:nuntium/features/permissions/presentation/ui/permissions_state_mapper.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class PermissionsPage extends StatelessWidget {
  const PermissionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return UIPageWrapper(
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      child: SnackbarManager(
        child: BlocProvider<PermissionsBloc>(
          create: (_) => GetIt.I.get(),
          child:
              SrBlocBuilder<PermissionsBloc, PermissionsState, PermissionsSR>(
            builder: (_, permissionsState) =>
                PermissionsStateMapper(permissionsState: permissionsState),
            onSR: _onSr,
          ),
        ),
      ),
    );
  }

  void _onSr(BuildContext context, PermissionsSR sr) => sr.when(
        showOpenSettingsDialog: () => _showOpenSettingsDialog(context),
        hasBeenRequested: () => _onHasBeenRequested(context),
      );

  void _showOpenSettingsDialog(BuildContext context) {
    UIDialog.showConfirmDialog(
      context,
      title: const LocalizedText(
        textKey: LocaleKeys.open_settings_title,
        textAlign: TextAlign.center,
      ),
      content: const LocalizedText(
        textKey: LocaleKeys.open_settings_content,
        textAlign: TextAlign.center,
      ),
      confirmText:
          const LocalizedText(textKey: LocaleKeys.open_settings_confirm),
      cancelText: const LocalizedText(textKey: LocaleKeys.cancel),
      onCancel: () =>
          context.read<NavigationBloc>().add(const NavigationEvent.pop()),
      onConfirm: () {
        context.read<NavigationBloc>().add(const NavigationEvent.pop());
        context
            .read<PermissionsBloc>()
            .add(const PermissionsEvent.openSettings());
      },
    );
  }

  void _onHasBeenRequested(BuildContext context) => context
      .read<NavigationBloc>()
      .add(const NavigationEvent.replaceWith(GetStartedRoute()));
}
