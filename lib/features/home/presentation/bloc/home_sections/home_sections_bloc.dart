import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/core/stream/subscription_manager.dart';
import 'package:nuntium/data/models/section/section_model.dart';
import 'package:nuntium/domain/interactors/sections/sections_interactor.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_bloc_models.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_state_mapper.dart';

@injectable
class HomeSectionsBloc extends Bloc<HomeSectionsEvent, HomeSectionsState> {
  final SectionsInteractor _sectionsInteractor;
  final SubscriptionManager<List<SectionModel>> _subscriptionManager;

  HomeSectionsBloc(
    this._sectionsInteractor,
    @Named(InjectableNames.homeSectionsBlocSubscriptionManager)
    this._subscriptionManager,
  ) : super(const HomeSectionsState.empty()) {
    on<HomeSectionsEventInit>(_onInit);
    on<HomeSectionsEventSetActiveSection>(_onSetActiveSection);
    on<HomeSectionsEventUpdateSections>(_onUpdateSections);
  }

  @override
  Future<void> close() async {
    _sectionsInteractor.dispose();
    _subscriptionManager.unsubscribe();
    await super.close();
  }

  FutureOr<void> _onInit(
    HomeSectionsEventInit event,
    Emitter<HomeSectionsState> emit,
  ) {
    _subscribeToSectionsStream();
    _sectionsInteractor.fetchSections();
  }

  FutureOr<void> _onSetActiveSection(
    HomeSectionsEventSetActiveSection event,
    Emitter<HomeSectionsState> emit,
  ) {
    _sectionsInteractor.activeSection = event.section;
    _emitUpdatedState(emit);
  }

  FutureOr<void> _onUpdateSections(
    HomeSectionsEventUpdateSections event,
    Emitter<HomeSectionsState> emit,
  ) {
    _emitUpdatedState(
      emit,
    );
  }

  void _subscribeToSectionsStream() {
    _subscriptionManager.subscribe(
        _sectionsInteractor.sectionsStream, _onSectionsReceived);
  }

  void _onSectionsReceived(List<SectionModel> sections) =>
      add(HomeSectionsEvent.updateSections(sections));

  bool _isSectionSelected(SectionModel section) => section.isSelected;

  void _emitUpdatedState(
    Emitter<HomeSectionsState> emit, {
    List<SectionModel>? sections,
    SectionModel? activeSection,
  }) {
    final updatedSections = sections ??
        List<SectionModel>.from(
            _sectionsInteractor.sections.where(_isSectionSelected));
    final updatedActiveSection =
        activeSection ?? _sectionsInteractor.activeSection;

    emit(state.mapState(updatedSections, updatedActiveSection));
  }
}
