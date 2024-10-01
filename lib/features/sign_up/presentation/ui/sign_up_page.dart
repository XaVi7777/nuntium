import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/sign_up/presentation/bloc/sign_up_bloc.dart';
import 'package:nuntium/features/sign_up/presentation/bloc/sign_up_bloc_models.dart';
import 'package:nuntium/features/sign_up/presentation/ui/sign_up_state_mapper.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return UIPageWrapper(
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      appBar: const UIAppBar(
        title: LocalizedText(
          textKey: LocaleKeys.sign_up_title,
        ),
        showBack: true,
      ),
      child: BlocProvider<SignUpBloc>(
        create: (_) => GetIt.I.get(),
        child: SrBlocBuilder<SignUpBloc, SignUpState, SignUpSR>(
          builder: SignUpStateMapper.mapState,
          onSR: _onSingleResult,
        ),
      ),
    );
  }

  void _onSingleResult(BuildContext context, SignUpSR sr) => sr.when(
        showLoader: () => UIOverlayLoader().show(context),
        hideLoader: () => UIOverlayLoader().hide(),
      );
}
