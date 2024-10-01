import 'package:flutter/material.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/features/home/presentation/ui/home_sections/section_chip.dart';

class HomeSectionsList extends StatelessWidget {
  final SectionModel activeSection;
  final List<SectionModel> sections;

  const HomeSectionsList({
    required this.activeSection,
    required this.sections,
    super.key,
  });

  static const Size _wrapperSize = Size(double.infinity, 32);
  static const Widget _sidePadding = SizedBox(width: 20);

  int get _itemCount => sections.length + 2;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: _wrapperSize,
      child: UIListView.separated(
        itemBuilder: _itemBuilder,
        itemCount: _itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: _separatorBuilder,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    if (index == 0 || index == sections.length + 1) {
      return _sidePadding;
    } else {
      final section = sections[index - 1];
      final isActive = section.type == activeSection.type;
      return SectionChip(
        key: ValueKey(section.type),
        isActive: isActive,
        section: section,
      );
    }
  }

  Widget _separatorBuilder(BuildContext context, int index) {
    if (index == 0 || index == sections.length) {
      return const SizedBox.shrink();
    }
    return UISpacers.mediumHorizontalSpacing;
  }
}
