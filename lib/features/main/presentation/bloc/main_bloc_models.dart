import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_bloc_models.freezed.dart';

@freezed
class MainState with _$MainState {
  MainStateData get data => this as MainStateData;

  const MainState._();

  const factory MainState.data({
    required int activeIndex,
  }) = MainStateData;

  const factory MainState.empty() = _Empty;
}

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.init() = MainEventInit;
  const factory MainEvent.updateMainIndex(int index) = MainEventUpdateMainIndex;
}
