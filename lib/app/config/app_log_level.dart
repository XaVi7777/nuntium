import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

enum AppLogLevel {
  @JsonValue(AppLogLevels.traceStr)
  trace,
  @JsonValue(AppLogLevels.debugStr)
  debug,
  @JsonValue(AppLogLevels.infoStr)
  info,
  @JsonValue(AppLogLevels.warningStr)
  warning,
  @JsonValue(AppLogLevels.errorStr)
  error,
  @JsonValue(AppLogLevels.fatalStr)
  fatal,
  @JsonValue(AppLogLevels.offStr)
  off,
}

extension AppLogLevels on AppLogLevel {
  Level get loggerLevel {
    switch (this) {
      case AppLogLevel.trace:
        return Level.trace;
      case AppLogLevel.debug:
        return Level.debug;
      case AppLogLevel.info:
        return Level.info;
      case AppLogLevel.warning:
        return Level.warning;
      case AppLogLevel.error:
        return Level.error;
      case AppLogLevel.fatal:
        return Level.fatal;
      case AppLogLevel.off:
        return Level.off;
    }
  }

  static AppLogLevel getFromString(String logLevelStr) {
    final logLevel =
        AppLogLevel.values.firstWhereOrNull((e) => e.name == logLevelStr);
    if (logLevel == null) {
      throw Exception('Invalid log level: $logLevelStr');
    }
    return logLevel;
  }

  static const traceStr = 'trace';
  static const debugStr = 'debug';
  static const infoStr = 'info';
  static const warningStr = 'warning';
  static const errorStr = 'error';
  static const fatalStr = 'fatal';
  static const offStr = 'off';
}
