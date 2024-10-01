import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc_models.dart';
import 'package:nuntium/features/recommended/presentation/ui/recommended_state_mapper.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class RecommendedPage extends StatelessWidget {
  const RecommendedPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return UIPageWrapper(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      appBar: UIAppBar(
        title: Text(LocaleKeys.recomended_title.tr()),
        showBack: true,
      ),
      child: BlocProvider<RecommendedBloc>(
        create: (context) => BlocUtils.create<RecommendedBloc, RecommendedEvent>(
          context,
          event: const RecommendedEvent.init(),
        ),
        child: BlocBuilder<RecommendedBloc, RecommendedState>(
          builder: (_, recommendedState) =>
              RecommendedStateMapper(recommendedState: recommendedState),
        ),
      ),
    );
  }
}
