import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/articles/articles_repository.dart';
import 'package:nuntium/data/bookmarks/bookmarks_repository.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/domain/use_cases/filter_articles_by_active_section_use_case.dart';
import 'package:nuntium/domain/use_cases/filter_articles_by_bookmarks_use_case.dart';
import 'package:nuntium/domain/use_cases/send_notification_use_case.dart';
import 'package:nuntium/features/home/domain/home_articles/home_articles_interactor.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@Singleton(as: HomeArticlesInteractor)
class HomeArticlesInteractorImpl implements HomeArticlesInteractor {
  final ArticlesRepository _articlesRepository;
  final BookmarksRepository _bookmarksRepository;
  final SendNotificationUseCase _sendNotificationUseCase;
  final FilterArticlesByBookmarksUseCase _filterArticlesByBookmarksUseCase;
  final FilterArticlesByActiveSectionUseCase
      _filterArticlesByActiveSectionUseCase;
  final StreamManager<List<ArticleModel>> _streamManager;
  final SubscriptionManager<FetchArticlesResult> _subscriptionManager;

  HomeArticlesInteractorImpl(
    this._articlesRepository,
    this._bookmarksRepository,
    this._sendNotificationUseCase,
    this._filterArticlesByBookmarksUseCase,
    this._filterArticlesByActiveSectionUseCase,
    this._streamManager,
    this._subscriptionManager,
  );

  @override
  Stream<List<ArticleModel>> get articlesStream => _streamManager.getStream();

  @override
  List<ArticleModel> get currentArticles => _streamManager.valueOrNull ?? [];

  @override
  void init() {
    _subscribeToArticlesStream();
  }

  @override
  Future<Either<Failure, Unit>> fetchArticles(SectionModel section) =>
      _articlesRepository.fetchArticles(section);

  @override
  void dispose() {
    _subscriptionManager.unsubscribe();
    _streamManager.dispose();
    _articlesRepository.dispose();
  }

  void _subscribeToArticlesStream() {
    _subscriptionManager.subscribeToCombinedStreams(
      [
        _articlesRepository.articlesStream
            .where(_filterArticlesByActiveSectionUseCase.call),
        _bookmarksRepository.bookmarksStream,
      ],
      _filterArticles,
      _updateArticles,
      cancelOnError: true,
    );
  }

  FetchArticlesResult _filterArticles(
    List<dynamic> combinedData,
  ) {
    final fetchArticlesResult = combinedData[0] as FetchArticlesResult;
    final bookmarks = combinedData[1] as List<ArticleModel>;

    final updatedArticles = _filterArticlesByBookmarksUseCase.call(
        fetchArticlesResult.articles, bookmarks);

    return fetchArticlesResult.copyWith(articles: updatedArticles);
  }

  void _updateArticles(FetchArticlesResult fetchArticlesResult) {
    final articles = fetchArticlesResult.articles;
    _streamManager.add(articles);
    if (fetchArticlesResult.isUpdated) {
      _sendNotification(const SnackbarMessage(
        message: LocaleKeys.home_articles_updated,
      ));
    }
  }

  void _sendNotification(SnackbarMessage message) =>
      _sendNotificationUseCase.call(message);
}
