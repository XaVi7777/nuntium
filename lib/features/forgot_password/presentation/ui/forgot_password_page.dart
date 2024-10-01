import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/forgot_password/presentation/bloc/forgot_password_bloc.dart';
import 'package:nuntium/features/forgot_password/presentation/bloc/forgot_password_bloc_models.dart';
import 'package:nuntium/features/forgot_password/presentation/ui/forgot_password_content.dart';
import 'package:nuntium/features/forgot_password/presentation/ui/forgot_password_empty.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class ForgotPasswordPage extends StatelessWidget {

  const ForgotPasswordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return UIPageWrapper(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      appBar: UIAppBar(
        title: Text(LocaleKeys.forgot_password_title.tr()),
        showBack: true,
      ),
      child: BlocProvider<ForgotPasswordBloc>(
        create: (_) => GetIt.I.get()..add(const ForgotPasswordEvent.init()),
        child: SrBlocBuilder<ForgotPasswordBloc, ForgotPasswordState,
            ForgotPasswordSR>(
          onSR: _onSingleResult,
          builder: (_, blocState) => blocState.map(
            data: (state) => ForgotPasswordContent(
              state: state,
            ),
            empty: (_) => const ForgotPasswordEmpty(),
          ),
        ),
      ),
    );
  }

  void _onSingleResult(
    BuildContext context,
    ForgotPasswordSR sr,
  ) =>
      sr.when(
        inited: () => null,
      );
}
