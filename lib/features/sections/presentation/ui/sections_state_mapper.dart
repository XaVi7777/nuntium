import 'package:flutter/widgets.dart';
import 'package:nuntium/features/sections/presentation/bloc/sections_bloc_models.dart';
import 'package:nuntium/features/sections/presentation/ui/sections_content.dart';
import 'package:nuntium/features/sections/presentation/ui/sections_empty.dart';

class SectionsStateMapper extends StatelessWidget {
  final SectionsState sectionsState;
  const SectionsStateMapper({
    required this.sectionsState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return sectionsState.map(
      data: (state) => SectionsContent(state: state),
      empty: (_) => const SectionsEmpty(),
    );
  }
}
