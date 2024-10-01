import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/config/config.dart';
import 'package:nuntium/app/config/ny_times_api_service_config.dart';

@module
abstract class ConfigModule {
  @preResolve
  Future<Config> get config async {
    return const Config();
  }

  @lazySingleton
  NyTimesApiServiceConfig get nyTimesApiServiceConfig {
    return NyTimesApiServiceConfig(
      apiKey: dotenv.env['API_KEY']!,
      baseEndpoint: dotenv.env['BASE_ENDPOINT']!,
      apiVersion: dotenv.env['API_VERSION']!,
    );
  }
}
