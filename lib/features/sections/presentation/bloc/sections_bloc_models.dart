import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/section/section_model.dart';

part 'sections_bloc_models.freezed.dart';

@freezed
class SectionsState with _$SectionsState {
  SectionsStateData get data => this as SectionsStateData;

  const SectionsState._();

  const factory SectionsState.data({
    @Default([]) List<SectionModel> sections,
  }) = SectionsStateData;

  const factory SectionsState.empty() = _Empty;
}

@freezed
class SectionsEvent with _$SectionsEvent {
  const factory SectionsEvent.init() = SectionsEventInit;
  const factory SectionsEvent.selectSection(SectionModel section) =
      SectionsEventSelectSection;
  const factory SectionsEvent.updateSections(List<SectionModel> sections) =
      SectionsEventUpdateSections;
}
