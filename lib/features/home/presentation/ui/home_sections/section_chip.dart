import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/localization/utils/section_text_util.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc_models.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_bloc_models.dart';

class SectionChip extends StatelessWidget {
  final bool isActive;
  final SectionModel section;

  const SectionChip({
    required this.isActive,
    required this.section,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UIChip(
      label: Text(
        SectionTextUtil.getSectionText(section.type),
      ),
      labelStyle: _getLabelStyle(context),
      isSelected: isActive,
      onSelected: (_) => _onSelected(context),
    );
  }

  TextStyle? _getLabelStyle(BuildContext context) {
    final theme = context.appTheme;
    return isActive
        ? theme.chipTheme.theme.labelStyle
            ?.copyWith(color: theme.colorTheme.onAccent)
        : null;
  }

  void _onSelected(BuildContext context) {
    if (!isActive) {
      context
          .read<HomeSectionsBloc>()
          .add(HomeSectionsEvent.setActiveSection(section));
      context
          .read<HomeArticlesBloc>()
          .add(HomeArticlesEvent.getArticlesBySection(section));
    }
  }
}
