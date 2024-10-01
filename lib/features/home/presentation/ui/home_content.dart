import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc_models.dart';
import 'package:nuntium/features/home/presentation/bloc/home_bookmarks/home_bookmarks_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_bookmarks/home_bookmarks_bloc_models.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_bloc_models.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_bloc_models.dart';
import 'package:nuntium/features/home/presentation/ui/home_articles/home_articles.dart';
import 'package:nuntium/features/home/presentation/ui/home_recommended/home_recommended.dart';
import 'package:nuntium/features/home/presentation/ui/home_search_bar/home_search_bar.dart';
import 'package:nuntium/features/home/presentation/ui/home_sections/home_sections.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  static const EdgeInsets _horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);

  List<BlocProvider> get _blocProviders => [
        BlocUtils.createBlocProvider<HomeBookmarksBloc, HomeBookmarksEvent>(),
        BlocUtils.createBlocProvider<HomeSectionsBloc, HomeSectionsEvent>(
          event: const HomeSectionsEvent.init(),
        ),
        BlocUtils.createBlocProvider<HomeArticlesBloc, HomeArticlesEvent>(
          event: const HomeArticlesEvent.init(),
        ),
        BlocUtils.createBlocProvider<HomeRecommendedBloc, HomeRecommendedEvent>(
          event: const HomeRecommendedEvent.init(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _blocProviders,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: UISpacers.largeSpacing),
          SliverPadding(
            padding: _horizontalPadding,
            sliver: SliverToBoxAdapter(
              child: HomeSearchBar(),
            ),
          ),
          SliverToBoxAdapter(child: UISpacers.mediumSpacing),
          SliverToBoxAdapter(child: HomeSections()),
          SliverToBoxAdapter(child: UISpacers.mediumSpacing),
          SliverToBoxAdapter(child: HomeArticles()),
          SliverToBoxAdapter(child: UISpacers.mediumSpacing),
          SliverPadding(
            padding: _horizontalPadding,
            sliver: HomeRecommended(),
          ),
        ],
      ),
    );
  }
}
