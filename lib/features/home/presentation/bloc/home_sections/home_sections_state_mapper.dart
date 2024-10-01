import 'package:nuntium/data/models/section/section_model.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_bloc_models.dart';

extension HomeSectionsStateMapper on HomeSectionsState {
  HomeSectionsState mapState(
    List<SectionModel> sections,
    SectionModel activeSection,
  ) {
    return maybeMap(
      data: (currentState) => currentState.copyWith(
        sections: sections,
        activeSection: activeSection,
      ),
      orElse: () => HomeSectionsState.data(
          sections: sections, activeSection: activeSection),
    );
  }
}
