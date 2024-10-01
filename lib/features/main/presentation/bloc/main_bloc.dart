import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/features/main/domain/main_index_interactor.dart';
import 'package:nuntium/features/main/presentation/bloc/main_bloc_models.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  final MainIndexInteractor _mainIndexInteractor;

  MainBloc(
    this._mainIndexInteractor,
  ) : super(const MainState.empty()) {
    on<MainEventInit>(_onInit);
    on<MainEventUpdateMainIndex>(_onUpdateMainIndex);
  }

  FutureOr<void> _onInit(
    MainEventInit event,
    Emitter<MainState> emit,
  ) async {
    _mainIndexInteractor.init();
    emit(_mapUpdatedState());
  }

  FutureOr<void> _onUpdateMainIndex(
    MainEventUpdateMainIndex event,
    Emitter<MainState> emit,
  ) {
    final updatedIndex = event.index;
    _mainIndexInteractor.mainIndex = updatedIndex;
    emit(_mapUpdatedState());
  }

  MainState _mapUpdatedState() {
    final activeIndex = _mainIndexInteractor.mainIndex;
    return state.map(
      data: (state) => state.data.copyWith(activeIndex: activeIndex),
      empty: (_) => MainState.data(activeIndex: activeIndex),
    );
  }
}
