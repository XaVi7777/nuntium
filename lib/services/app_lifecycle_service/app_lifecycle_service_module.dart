import 'package:injectable/injectable.dart';
import 'package:nuntium/services/app_lifecycle_service/app_lifecycle_service.dart';

@module
abstract class AppLifecycleServiceModule {
  @lazySingleton
  AppLifecycleService provideAppLifecycleService() => AppLifecycleService();
}
