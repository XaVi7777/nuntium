import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/localization/utils/section_text_util.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui_ink_well/ui_ink_well.dart';
import 'package:nuntium/data/models/section/section_model.dart';
import 'package:nuntium/features/sections/presentation/bloc/sections_bloc.dart';
import 'package:nuntium/features/sections/presentation/bloc/sections_bloc_models.dart';

class SectionCard extends StatelessWidget {
  final SectionModel section;

  const SectionCard({
    required this.section,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return UIInkWell(
      onTap: () => _onTapCard(context, section),
      child: Card(
        shape: section.isSelected
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: theme.colorTheme.accentVariant,
                ),
              )
            : null,
        child: Center(
          child: Text(
            SectionTextUtil.getSectionTextWithEmoji(section.type),
            style: theme.textTheme.cardLabelTextMedium,
          ),
        ),
      ),
    );
  }

  void _onTapCard(BuildContext context, SectionModel section) =>
      context.read<SectionsBloc>().add(SectionsEvent.selectSection(section));
}
