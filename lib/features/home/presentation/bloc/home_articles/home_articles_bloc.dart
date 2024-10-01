import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/domain/interactors/sections/sections_interactor.dart';
import 'package:nuntium/domain/use_cases/filter_articles_by_search_use_case.dart';
import 'package:nuntium/features/home/domain/home_articles/home_articles_interactor.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc_models.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_state_mapper.dart';

@injectable
class HomeArticlesBloc extends Bloc<HomeArticlesEvent, HomeArticlesState> {
  final HomeArticlesInteractor _homeArticlesInteractor;
  final SectionsInteractor _activeSectionsInteractor;
  final FilterArticlesBySearchUseCase _filterArticlesBySearchUseCase;
  final SubscriptionManager<List<ArticleModel>> _subscriptionManager;

  HomeArticlesBloc(
    this._homeArticlesInteractor,
    this._activeSectionsInteractor,
    this._filterArticlesBySearchUseCase,
    this._subscriptionManager,
  ) : super(const HomeArticlesState.empty()) {
    on<HomeArticlesEventInit>(_initialize);
    on<HomeArticlesEventGetArticlesBySection>(_loadArticlesBySection);
    on<HomeArticlesEventUpdateArticles>(_updateArticles);
    on<HomeArticlesEventSearchArticles>(_searchArticles);
    on<HomeArticlesEventRetry>(_retryLoading);
  }

  @override
  Future<void> close() async {
    _unsubscribeFromArticlesStream();
    _homeArticlesInteractor.dispose();
    return super.close();
  }

  FutureOr<void> _initialize(
    HomeArticlesEventInit event,
    Emitter<HomeArticlesState> emit,
  ) async {
    _initializeInteractor();
    _subscribeToArticlesStream();
    await _loadArticlesForActiveSection(emit);
  }

  void _initializeInteractor() {
    _homeArticlesInteractor.init();
  }

  Future<void> _loadArticlesForActiveSection(
      Emitter<HomeArticlesState> emit) async {
    final result = await _homeArticlesInteractor
        .fetchArticles(_activeSectionsInteractor.activeSection);
    result.fold(
      (failure) => emit(const HomeArticlesState.error()),
      (success) => null,
    );
  }

  FutureOr<void> _updateArticles(
    HomeArticlesEventUpdateArticles event,
    Emitter<HomeArticlesState> emit,
  ) {
    final updatedState = state.mapState(event.articles);
    emit(updatedState);
  }

  FutureOr<void> _searchArticles(
    HomeArticlesEventSearchArticles event,
    Emitter<HomeArticlesState> emit,
  ) {
    final filteredArticles = _filterArticlesBySearchUseCase.call(
      articles:
          List<ArticleModel>.from(_homeArticlesInteractor.currentArticles),
      searchValue: event.searchValue,
    );
    emit(state.mapState(filteredArticles));
  }

  FutureOr<void> _loadArticlesBySection(
    HomeArticlesEventGetArticlesBySection event,
    Emitter<HomeArticlesState> emit,
  ) async {
    emit(const HomeArticlesState.loading());
    await _loadArticlesForActiveSection(emit);
  }

  FutureOr<void> _retryLoading(
    HomeArticlesEventRetry event,
    Emitter<HomeArticlesState> emit,
  ) {
    add(HomeArticlesEvent.getArticlesBySection(
        _activeSectionsInteractor.activeSection));
  }

  void _subscribeToArticlesStream() {
    _subscriptionManager.subscribe(
        _homeArticlesInteractor.articlesStream, _handleReceivedArticles);
  }

  void _unsubscribeFromArticlesStream() {
    _subscriptionManager.unsubscribe();
  }

  void _handleReceivedArticles(List<ArticleModel> articles) {
    if (articles.isNotEmpty) {
      add(HomeArticlesEvent.updateArticles(articles));
    }
  }
}
