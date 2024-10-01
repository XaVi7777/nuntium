import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc_models.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_bloc_models.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UISearch(
      config: FormFieldConfig.searchField(
        config:
            DefaultFormFieldConfigMapper.getDefaultConfig(FormFieldType.search)
                .copyWith(
                    onChanged: (value) => _onChangedSearch(context, value)),
      ),
    );
  }

  void _onChangedSearch(BuildContext context, String? value) {
    context
        .read<HomeArticlesBloc>()
        .add(HomeArticlesEvent.searchArticles(value));
    context.read<HomeRecommendedBloc>().add(
          HomeRecommendedEvent.search(value),
        );
  }
}
