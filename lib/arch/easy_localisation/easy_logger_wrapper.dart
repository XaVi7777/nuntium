import 'package:easy_logger/easy_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Сущнность объединяющая логгеры [Logger] и [EasyLogger]
/// Необходимо передать метод [log] в [EasyLocalizations]
@lazySingleton
class EasyLoggerWrapper {
  final Logger _logger;

  EasyLoggerWrapper(this._logger);

  void log(
    Object object, {
    LevelMessages? level,
    String? name,
    StackTrace? stackTrace,
  }) {
    switch (level) {
      case LevelMessages.info:
        _logger.i(
          '[$name] $object',
          stackTrace: stackTrace,
        );
      case LevelMessages.warning:
        _logger.w(
          '[$name] $object',
          stackTrace: stackTrace,
        );
      case LevelMessages.error:
        _logger.e(
          '[$name] $object',
          stackTrace: stackTrace,
        );
      default:
        _logger.d(
          '[$name] $object',
          stackTrace: stackTrace,
        );
        break;
    }
  }

  void stubLog(
    Object object, {
    String? name,
    LevelMessages? level,
    StackTrace? stackTrace,
  }) {}
}
