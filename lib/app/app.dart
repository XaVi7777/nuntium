import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:nuntium/app/app_environment.dart';
import 'package:nuntium/app/localization/localization_widget.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc_models.dart';
import 'package:nuntium/app/widgets/themeble/theme_app.dart';
import 'package:nuntium/app/widgets/themeble/themeble_widget.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/services/app_lifecycle_service/app_lifecycle_service.dart';

class App extends StatefulWidget {
  final AppEnvironment appEnvironment;
  const App({
    required this.appEnvironment,
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppLifecycleService _appLifecycleService =
      GetIt.I<AppLifecycleService>();

  @override
  void initState() {
    super.initState();
    _appLifecycleService.subscribe();
  }

  @override
  void dispose() {
    _appLifecycleService.unsubscribe();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationBloc>(
      create: BlocUtils.create<NavigationBloc, NavigationEvent>,
      child: LocalizationWidget(
        child: ThemebleWidget(
          themebleBuilder: (themeState) => ThemedApp(
            environment: widget.appEnvironment,
            appTheme: themeState,
          ),
        ),
      ),
    );
  }
}
