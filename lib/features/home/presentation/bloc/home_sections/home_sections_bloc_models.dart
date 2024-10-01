import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/section/section_model.dart';

part 'home_sections_bloc_models.freezed.dart';

@freezed
class HomeSectionsState with _$HomeSectionsState {
  HomeSectionsStateData get data => this as HomeSectionsStateData;

  const HomeSectionsState._();

  const factory HomeSectionsState.data({
    required List<SectionModel> sections,
    required SectionModel activeSection,
  }) = HomeSectionsStateData;

  const factory HomeSectionsState.empty() = _Empty;
}

@freezed
class HomeSectionsEvent with _$HomeSectionsEvent {
  const factory HomeSectionsEvent.init() = HomeSectionsEventInit;
  const factory HomeSectionsEvent.setActiveSection(SectionModel section) =
      HomeSectionsEventSetActiveSection;
  const factory HomeSectionsEvent.updateSections(List<SectionModel> sections) =
      HomeSectionsEventUpdateSections;
}
