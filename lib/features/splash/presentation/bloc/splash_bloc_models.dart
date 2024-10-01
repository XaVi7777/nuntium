import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_bloc_models.freezed.dart';

@freezed
class SplashState with _$SplashState {
  SplashStateData get data => this as SplashStateData;

  const SplashState._();

  const factory SplashState.data() = SplashStateData;
  const factory SplashState.error() = SplashStateError;
}

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.init() = SplashEventInit;
}

@freezed
class SplashSR with _$SplashSR {
  const factory SplashSR.authFailed() = _AuthFailed;
  const factory SplashSR.startUpSuccess() = _StartUpSuccess;
}
