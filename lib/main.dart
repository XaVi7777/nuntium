import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:nuntium/app/app_environment.dart';
import 'package:nuntium/app/config/app_log_level.dart';
import 'package:nuntium/app/config/app_settings.dart';
import 'package:nuntium/app/runner.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load();

    const appSettings =
        AppSettings(logLevel: AppLogLevel.off, debugInstruments: true);

    final appLogLevel = appSettings.logLevel;
    final enableLogs = appLogLevel != AppLogLevel.off;
    final debugInstrumentsEnv = appSettings.debugInstruments;
    final buildType = !kReleaseMode || debugInstrumentsEnv
        ? BuildType.debug
        : BuildType.release;
    await Runner.run(
      AppEnvironment(
        buildType: buildType,
        debugOptions: DebugOptions(
          debugShowCheckedModeBanner: buildType == BuildType.debug,
        ),
        logLevel: appLogLevel,
        enableBlocLogs: enableLogs,
        enableRoutingLogs: enableLogs,
        enableDioLogs: enableLogs,
        enableEasyLocalizationLogs: false,
      ),
    );
  }, (error, stack) {
    Logger().e('Ошибка при инициализации приложения: $error $stack');
  });
}
