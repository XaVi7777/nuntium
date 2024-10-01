import 'package:logger/logger.dart';

class DioLoggerWrapper {
  final Logger logger;

  DioLoggerWrapper(this.logger);

  void logPrint(Object o) => logger.d(o);
}
