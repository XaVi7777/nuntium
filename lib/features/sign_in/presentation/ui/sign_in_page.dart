import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/app/widgets/snackbar_manager/snackbar_manager.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/features/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:nuntium/features/sign_in/presentation/bloc/sign_in_bloc_models.dart';
import 'package:nuntium/features/sign_in/presentation/ui/sign_in_state_mapper.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return UIPageWrapper(
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      appBar: const UIAppBar(
        title: LocalizedText(textKey: LocaleKeys.sign_in_title),
        centerTitle: false,
      ),
      child: SnackbarManager(
        child: BlocProvider<SignInBloc>(
          create: BlocUtils.create<SignInBloc, SignInEvent>,
          child: SrBlocBuilder<SignInBloc, SignInState, SignInSR>(
            builder: SignInStateMapper.mapState,
            onSR: _onSr,
          ),
        ),
      ),
    );
  }

  void _onSr(BuildContext context, SignInSR sr) => sr.when(
        showLoader: () => UIOverlayLoader().show(context),
        hideLoader: () => UIOverlayLoader().hide(),
      );
}
