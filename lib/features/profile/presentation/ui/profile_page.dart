import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/app/widgets/snackbar_manager/snackbar_manager.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:nuntium/features/profile/presentation/bloc/profile_bloc_models.dart';
import 'package:nuntium/features/profile/presentation/ui/profile_state_mapper.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return UIPageWrapper(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      appBar: const UIAppBarWithDescription(
        title: LocalizedText(
          textKey: LocaleKeys.profile_title,
        ),
        centerTitle: false,
        description: '',
      ),
      child: SnackbarManager(
        child: BlocProvider<ProfileBloc>(
          create: (context) => BlocUtils.create<ProfileBloc, ProfileEvent>(
            context,
            event: const ProfileEvent.init(),
          ),
          child: SrBlocBuilder<ProfileBloc, ProfileState, ProfileSR>(
            onSR: _onSingleResult,
            builder: (_, profileState) =>
                ProfileStateMapper(profileState: profileState),
          ),
        ),
      ),
    );
  }

  void _onSingleResult(
    BuildContext context,
    ProfileSR sr,
  ) =>
      sr.when(
        showLoader: () => UIOverlayLoader().show(context),
        hideLoader: () => UIOverlayLoader().hide(),
      );
}
