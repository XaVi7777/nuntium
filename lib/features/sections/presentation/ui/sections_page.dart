import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/features/sections/presentation/bloc/sections_bloc.dart';
import 'package:nuntium/features/sections/presentation/bloc/sections_bloc_models.dart';
import 'package:nuntium/features/sections/presentation/ui/sections_state_mapper.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class SectionsPage extends StatelessWidget {
  const SectionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return UIPageWrapper(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      appBar: UIAppBarWithDescription(
        title: Text(LocaleKeys.sections_title.tr()),
        description: LocaleKeys.sections_description.tr(),
        centerTitle: false,
      ),
      child: BlocProvider<SectionsBloc>(
        create: (context) => BlocUtils.create<SectionsBloc, SectionsEvent>(
          context,
          event: const SectionsEvent.init(),
        ),
        child: BlocBuilder<SectionsBloc, SectionsState>(
          builder: (_, sectionsState) => SectionsStateMapper(
            sectionsState: sectionsState,
          ),
        ),
      ),
    );
  }
}
