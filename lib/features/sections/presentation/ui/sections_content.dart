import 'package:flutter/material.dart';
import 'package:nuntium/app/widgets/content_padding/content_padding.dart';
import 'package:nuntium/features/sections/presentation/bloc/sections_bloc_models.dart';
import 'package:nuntium/features/sections/presentation/ui/section_card.dart';

class SectionsContent extends StatelessWidget {
  final SectionsStateData state;

  const SectionsContent({
    required this.state,
    super.key,
  });
  static const _crossAxiCount = 2;
  static const _crossAxisSpacing = 16.0;
  static const _mainAxisSpacing = 16.0;
  static const _childAspectRatio = 2.5;

  int get  _itemcount => state.sections.length;
  
  @override
  Widget build(BuildContext context) {
    return ContentPadding(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _crossAxiCount,
          crossAxisSpacing: _crossAxisSpacing,
          mainAxisSpacing: _mainAxisSpacing,
          childAspectRatio: _childAspectRatio,
        ),
        itemCount: _itemcount,
        itemBuilder: _itemBuilder,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    final section = state.sections[index];
    return SectionCard(
      key: ValueKey(section.type),
      section: section,
    );
  }
}
