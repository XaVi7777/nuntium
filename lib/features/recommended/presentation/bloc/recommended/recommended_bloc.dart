import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/core/stream/subscription_manager.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/domain/interactors/bookmarks/bookmarks_interactor.dart';
import 'package:nuntium/domain/interactors/recommended/recomended_interactor.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc_models.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_state_mapper.dart';

@injectable
class RecommendedBloc extends Bloc<RecommendedEvent, RecommendedState> {
  final RecommendedInteractor _recommendedInteractor;
  final BookmarksInteractor _bookmarksInteractor;
  final SubscriptionManager<List<ArticleModel>> _subscriptionManager;

  RecommendedBloc({
    @Named(InjectableNames.recommendedInteractor)
    required RecommendedInteractor recommendedInteractor,
    required BookmarksInteractor bookmarksInteractor,
    @Named(InjectableNames.recommendedBlocSubscriptionManager)
    required SubscriptionManager<List<ArticleModel>> subscriptionManager,
  })  : _recommendedInteractor = recommendedInteractor,
        _bookmarksInteractor = bookmarksInteractor,
        _subscriptionManager = subscriptionManager,
        super(const RecommendedState.empty()) {
    on<RecommendedEventInit>(_onInit);
    on<RecommendedEventUpdateRecommended>(_onUpdateArticles);
    on<RecommendedEventAddBookmark>(_onAddBookmark);
  }

  @override
  Future<void> close() async {
    _recommendedInteractor.dispose();
    await super.close();
  }

  FutureOr<void> _onInit(
    RecommendedEventInit event,
    Emitter<RecommendedState> emit,
  ) async {
    _recommendedInteractor.init();
    _subscriptionManager.subscribe(
      _recommendedInteractor.recommendedStream,
      _onReceiveNewRecommended,
    );
    await _recommendedInteractor.fetchRecommended();
  }

  FutureOr<void> _onUpdateArticles(
    RecommendedEventUpdateRecommended event,
    Emitter<RecommendedState> emit,
  ) {
    emit(state.mapState(event.recommended));
  }

  FutureOr<void> _onAddBookmark(
    RecommendedEventAddBookmark event,
    Emitter<RecommendedState> emit,
  ) async {
    final article = event.article;

    await _bookmarksInteractor.addBookmark(article);
  }

  void _onReceiveNewRecommended(List<ArticleModel> recommended) {
    add(RecommendedEvent.updateRecommended(recommended));
  }
}
