import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/app/config/app_log_level.dart';

part 'app_environment.freezed.dart';
part 'app_environment.g.dart';

@freezed
class AppEnvironment with _$AppEnvironment {
  /// [buildType] - вид билда приложения
  /// [debugOptions] - набор debug-flutter настроек приложения
  /// [logLevel] - минимальный логируемый уровень лог-системы приложения
  /// [enableEasyLocalizationLogs] - параметр управляющий включением/выключением логов слоя локализации
  /// [enableBlocLogs] - параметр управляющий включением/выключением логов Bloc слоя
  /// [enableRoutingLogs] - параметр управляющий включением/выключением логов Routing слоя
  /// [enableDioLogs] - параметр управляющий включением/выключением логов http слоя
  const factory AppEnvironment({
    required BuildType buildType,
    required DebugOptions debugOptions,
    required AppLogLevel logLevel,
    required bool enableEasyLocalizationLogs,
    required bool enableBlocLogs,
    required bool enableRoutingLogs,
    required bool enableDioLogs,
  }) = _AppEnvironment;

  factory AppEnvironment.fromJson(Map<String, dynamic> json) =>
      _$AppEnvironmentFromJson(json);
}

@freezed
class DebugOptions with _$DebugOptions {
  const factory DebugOptions({
    @Default(false) bool showPerformanceOverlay,
    @Default(false) bool debugShowMaterialGrid,
    @Default(false) bool checkerboardRasterCacheImages,
    @Default(false) bool checkerboardOffscreenLayers,
    @Default(false) bool showSemanticsDebugger,
    @Default(false) bool debugShowCheckedModeBanner,
  }) = _DebugOptions;

  factory DebugOptions.fromJson(Map<String, dynamic> json) =>
      _$DebugOptionsFromJson(json);
}

enum BuildType {
  @JsonValue('debug')
  debug,
  @JsonValue('release')
  release,
}

extension BuildTypes on BuildType {
  static const debugEnvKey = 'debugEnv';
  static const releaseEnvKey = 'releaseEnv';

  String get getItEnvironmentKey {
    switch (this) {
      case BuildType.debug:
        return debugEnvKey;
      case BuildType.release:
        return releaseEnvKey;
    }
  }
}
