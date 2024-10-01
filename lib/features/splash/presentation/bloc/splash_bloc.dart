import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc.dart';
import 'package:nuntium/features/splash/domain/startup_interactor.dart';
import 'package:nuntium/features/splash/presentation/bloc/splash_bloc_models.dart';

@injectable
class SplashBloc extends SrBloc<SplashEvent, SplashState, SplashSR> {
  final StartupInteractor _startupInteractor;

  SplashBloc(
    this._startupInteractor,
  ) : super(const SplashState.data()) {
    on<SplashEventInit>(_onInit);
  }

  FutureOr<void> _onInit(
    SplashEventInit event,
    Emitter<SplashState> emit,
  ) async {
    _resetStateIfError(emit);

    final initResult = await _startupInteractor.init();
    await initResult.fold(
      (_) async => emit(const SplashState.error()),
      (_) async => _handleStartupSuccess(emit),
    );
  }

  void _resetStateIfError(Emitter<SplashState> emit) {
    if (state is SplashStateError) {
      emit(const SplashState.data());
    }
  }

  Future<void> _handleStartupSuccess(Emitter<SplashState> emit) async {
    if (!_startupInteractor.isAuthorized) {
      addSr(const SplashSR.authFailed());
    } else {
      await _loadData(emit);
    }
  }

  Future<void> _loadData(Emitter<SplashState> emit) async {
    final result = await _startupInteractor.loadData();

    result.fold(
      (_) => emit(const SplashState.error()),
      (_) => addSr(const SplashSR.startUpSuccess()),
    );
  }
}
