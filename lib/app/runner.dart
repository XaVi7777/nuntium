import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:nuntium/app/app.dart';
import 'package:nuntium/app/app_environment.dart';
import 'package:nuntium/app/runner.config.dart';
import 'package:nuntium/arch/easy_localisation/easy_logger_wrapper.dart';
import 'package:nuntium/arch/key_value_store/key_value_store.dart';
import 'package:nuntium/arch/key_value_store/key_value_store_migrator.dart';
import 'package:nuntium/core/infrastructure/logger_bloc_observer.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
  ignoreUnregisteredTypes: [
    AppEnvironment,
  ],
)
class Runner {
  static Future<void> run(
    AppEnvironment appEnvironment,
  ) async {
    await initializeFlutterPluginsAndDependencies(
      appEnvironment: appEnvironment,
    );
    if (appEnvironment.enableBlocLogs) {
      Bloc.observer = GetIt.I.get<LoggerBlocObserver>();
    }

    FlutterError.onError = (details) {
      GetIt.I.get<Logger>().e(
            'Flutter Error: ${details.exception}',
            stackTrace: details.stack,
          );
    };
    if (appEnvironment.enableBlocLogs) {
      Bloc.observer = GetIt.I.get<LoggerBlocObserver>();
    }
    runApp(App(appEnvironment: appEnvironment));
  }

  static Future<void> initializeFlutterPluginsAndDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    await configureDependencies(appEnvironment: appEnvironment);

    await GetIt.I.get<KeyValueStore>().init();
    await GetIt.I.get<KeyValueStoreMigrator>().migrate();

    final easyLoggerWrapper = GetIt.I.get<EasyLoggerWrapper>();
    EasyLocalization.logger.name = '🌎 Easy Localization';
    EasyLocalization.logger.printer = appEnvironment.enableEasyLocalizationLogs
        ? easyLoggerWrapper.log
        : easyLoggerWrapper.stubLog;

    await EasyLocalization.ensureInitialized();
  }

  static Future<void> configureDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    GetIt.I.registerSingleton<AppEnvironment>(appEnvironment);

    await $initGetIt(
      GetIt.instance,
      environment: appEnvironment.buildType.getItEnvironmentKey,
    );
  }
}
