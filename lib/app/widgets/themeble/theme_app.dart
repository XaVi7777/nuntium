import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nuntium/app/app_environment.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/router/auth_reevaluate_listenable.dart';
import 'package:nuntium/app/router/router_logging_observer.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';

class ThemedApp extends StatelessWidget {
  final AppEnvironment environment;
  final AppTheme appTheme;

  const ThemedApp({
    required this.environment,
    required this.appTheme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I.get<AppRouter>();
    final reevaluateListenable = GetIt.I.get<AppReevaluateListenable>();
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: appTheme.colorTheme.colorScheme,
        appBarTheme: appTheme.appBarTheme.theme,
        chipTheme: appTheme.chipTheme.theme,
        cardTheme: appTheme.cardTheme.theme,
        textTheme: appTheme.textTheme.theme,
        switchTheme: appTheme.switchTheme.theme,
        listTileTheme: appTheme.listTileTheme.theme,
        inputDecorationTheme: appTheme.formTheme.inputDecorationTheme,
        shadowColor: appTheme.colorTheme.onBackground,
        bottomSheetTheme: appTheme.bottomSheetTheme.theme,
        textButtonTheme: appTheme.textButtonTheme.theme,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      showPerformanceOverlay: environment.debugOptions.showPerformanceOverlay,
      debugShowMaterialGrid: environment.debugOptions.debugShowMaterialGrid,
      checkerboardRasterCacheImages:
          environment.debugOptions.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers:
          environment.debugOptions.checkerboardOffscreenLayers,
      showSemanticsDebugger: environment.debugOptions.showSemanticsDebugger,
      debugShowCheckedModeBanner:
          environment.debugOptions.debugShowCheckedModeBanner,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(
        appRouter,
        reevaluateListenable: reevaluateListenable,
        navigatorObservers: () => [
          GetIt.I.get<RouterLoggingObserver>(),
        ],
      ),
    );
  }
}
