import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:nuntium/features/splash/presentation/bloc/splash_bloc_models.dart';
import 'package:nuntium/features/splash/presentation/ui/splash_content.dart';
import 'package:nuntium/features/splash/presentation/ui/splash_error.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  final VoidCallback? onLoad;

  const SplashPage({
    this.onLoad,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;

    return UIPageWrapper(
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      appBar: const UIEmptyAppbar(),
      child: BlocProvider<SplashBloc>(
        create: (context) => BlocUtils.create<SplashBloc, SplashEvent>(
          context,
          event: const SplashEvent.init(),
        ),
        child: SrBlocBuilder<SplashBloc, SplashState, SplashSR>(
          onSR: _handleSingleResult,
          builder: _buildState,
        ),
      ),
    );
  }

  Widget _buildState(BuildContext context, SplashState state) => state.map(
        data: (dataState) => SplashContent(state: dataState),
        error: (_) => const SplashError(),
      );

  void _handleSingleResult(BuildContext context, SplashSR sr) => sr.when(
        authFailed: () => _navigateToOnboarding(context),
        startUpSuccess: () => _navigateToMain(context),
      );

  void _navigateToOnboarding(BuildContext context) {
    context.replaceRoute(const OnboardingRoute());
  }

  void _navigateToMain(BuildContext context) {
    context.replaceRoute(const MainRoute());
  }
}
