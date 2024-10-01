import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/domain/interactors/recommended/recomended_interactor.dart';
import 'package:nuntium/domain/use_cases/filter_articles_by_search_use_case.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_bloc_models.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_state_mapper.dart';

@injectable
class HomeRecommendedBloc
    extends Bloc<HomeRecommendedEvent, HomeRecommendedState> {
  final RecommendedInteractor _recommendedInteractor;
  final FilterArticlesBySearchUseCase _filterArticlesBySearchUseCase;
  final SubscriptionManager<List<ArticleModel>> _subscriptionManager;

  HomeRecommendedBloc({
    @Named(InjectableNames.homeRecommendedInteractor)
    required RecommendedInteractor homeRecommendedInteractor,
    required FilterArticlesBySearchUseCase filterArticlesBySearchUseCase,
    @Named(InjectableNames.homeRecommendedBlocSubscriptionManager)
    required SubscriptionManager<List<ArticleModel>> subscriptionManager,
  })  : _recommendedInteractor = homeRecommendedInteractor,
        _filterArticlesBySearchUseCase = filterArticlesBySearchUseCase,
        _subscriptionManager = subscriptionManager,
        super(const HomeRecommendedState.empty()) {
    on<HomeRecommendedEventInit>(_onInit);
    on<HomeRecommendedEventSearch>(_onSearch);
    on<HomeRecommendedEventUpdateRecommended>(_onUpdateArticles);
  }

  @override
  Future<void> close() async {
    _recommendedInteractor.dispose();
    await super.close();
  }

  FutureOr<void> _onInit(
    HomeRecommendedEventInit event,
    Emitter<HomeRecommendedState> emit,
  ) async {
    _recommendedInteractor.init();
    _subscriptionManager.subscribe(
        _recommendedInteractor.recommendedStream, _onReceiveNewRecommended);
    await _recommendedInteractor.fetchRecommended();
  }

  FutureOr<void> _onSearch(
    HomeRecommendedEventSearch event,
    Emitter<HomeRecommendedState> emit,
  ) {
    final searchValue = event.searchValue;
    final filteredArticles = _filterArticlesBySearchUseCase.call(
      searchValue: searchValue,
      articles:
          List<ArticleModel>.from(_recommendedInteractor.currentRecommended),
    );
    emit(state.mapState(filteredArticles));
  }

  FutureOr<void> _onUpdateArticles(
    HomeRecommendedEventUpdateRecommended event,
    Emitter<HomeRecommendedState> emit,
  ) {
    emit(state.mapState(event.articles));
  }

  void _onReceiveNewRecommended(List<ArticleModel> recommended) {
    add(HomeRecommendedEvent.updateRecommended(recommended));
  }
}
