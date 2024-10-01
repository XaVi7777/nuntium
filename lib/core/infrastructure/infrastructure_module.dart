import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:nuntium/app/app_environment.dart';
import 'package:nuntium/app/config/app_log_level.dart';
import 'package:nuntium/core/infrastructure/cancellable_request_manager.dart';
import 'package:nuntium/core/infrastructure/dio_logger_wrapper.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler_impl.dart';

@module
abstract class InfrastructureModule {
  @lazySingleton
  Connectivity connectivity() => Connectivity();

  @lazySingleton
  DioLoggerWrapper dioLoggerWrapper(AppEnvironment appEnvironment) {
    return DioLoggerWrapper(
      Logger(
        printer: SimplePrinter(),
        filter: ProductionFilter(),
        level: appEnvironment.logLevel.loggerLevel,
        output: MultiOutput(
          [
            ConsoleOutput(),
          ],
        ),
      ),
    );
  }

  @lazySingleton
  Logger logger(AppEnvironment appEnvironment) {
    return Logger(
      printer: PrettyPrinter(
        methodCount: 0,
      ),
      filter: ProductionFilter(),
      level: appEnvironment.logLevel.loggerLevel,
      output: MultiOutput(
        [
          ConsoleOutput(),
        ],
      ),
    );
  }

  @lazySingleton
  CancelableRequestManagerFactory cancelableRequestManagerFactory() {
    return CancelableRequestManagerFactory();
  }

  @lazySingleton
  ErrorHandler errorHandler(Logger logger) {
    return ErrorHandlerImpl(logger);
  }

}
