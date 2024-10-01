import 'package:flutter/widgets.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_bloc_models.dart';
import 'package:nuntium/features/home/presentation/ui/home_sections/home_sections_list.dart';

class HomeSeactionsMapper extends StatelessWidget {
  final HomeSectionsState homeSectionsState;

  const HomeSeactionsMapper({
    required this.homeSectionsState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return homeSectionsState.map(
      data: (state) => HomeSectionsList(
        activeSection: state.activeSection,
        sections: state.sections,
      ),
      empty: (value) => const SizedBox.shrink(),
    );
  }
}
