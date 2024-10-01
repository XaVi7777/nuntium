import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/core/stream/subscription_manager.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/domain/interactors/sections/sections_interactor.dart';
import 'package:nuntium/features/sections/presentation/bloc/sections_bloc_models.dart';

@injectable
class SectionsBloc extends Bloc<SectionsEvent, SectionsState> {
  final SectionsInteractor _sectionsInteractor;
  final SubscriptionManager<List<SectionModel>> _subscriptionManager;

  SectionsBloc(
    this._sectionsInteractor,
    @Named(InjectableNames.sectionsBlocSubscriptionManager)
    this._subscriptionManager,
  ) : super(const SectionsState.empty()) {
    on<SectionsEventInit>(_onInit);
    on<SectionsEventSelectSection>(_onSelectSection);
    on<SectionsEventUpdateSections>(_onUpdateSections);
  }

  @override
  Future<void> close() {
    _unsubscribeFromSectionsStream();
    return super.close();
  }

  FutureOr<void> _onInit(
    SectionsEventInit event,
    Emitter<SectionsState> emit,
  ) {
    _subscribeToSectionsStream();
    _sectionsInteractor.fetchSections();
  }

  FutureOr<void> _onSelectSection(
    SectionsEventSelectSection event,
    Emitter<SectionsState> emit,
  ) {
    final updatedSection =
        event.section.copyWith(isSelected: !event.section.isSelected);
    _sectionsInteractor.updateSection(updatedSection);
  }

  FutureOr<void> _onUpdateSections(
    SectionsEventUpdateSections event,
    Emitter<SectionsState> emit,
  ) {
    emit(
      SectionsState.data(
        sections: event.sections.where(_sectionFilter).toList(),
      ),
    );
  }

  void _subscribeToSectionsStream() {
    _unsubscribeFromSectionsStream();
    _subscriptionManager.subscribe(
      _sectionsInteractor.sectionsStream,
      _onReceiveSections,
    );
  }

  void _unsubscribeFromSectionsStream() {
    _subscriptionManager.unsubscribe();
  }

  bool _sectionFilter(SectionModel section) => !section.isHome;

  void _onReceiveSections(List<SectionModel> sections) {
    add(SectionsEventUpdateSections(sections));
  }
}
