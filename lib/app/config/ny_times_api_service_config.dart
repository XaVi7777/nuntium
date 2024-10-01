import 'package:freezed_annotation/freezed_annotation.dart';

part 'ny_times_api_service_config.freezed.dart';

@freezed
class NyTimesApiServiceConfig with _$NyTimesApiServiceConfig {
  const factory NyTimesApiServiceConfig({
    required String apiKey,
    required String baseEndpoint,
    required String apiVersion,
  }) = _NyTimesApiServiceConfig;
}
