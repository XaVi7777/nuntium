import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/app/config/app_log_level.dart';

part 'app_settings.freezed.dart';

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    required AppLogLevel logLevel,
    required bool debugInstruments,
  }) = _AppSettings;
}
