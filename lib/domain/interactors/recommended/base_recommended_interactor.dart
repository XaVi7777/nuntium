import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/bookmarks/bookmarks_repository.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/data/models/article/fetch_recommended_result.dart';
import 'package:nuntium/data/models/snackbar_message/snackbar_message.dart';
import 'package:nuntium/data/notifications/notifications_repository.dart';
import 'package:nuntium/data/recommended/recommended_repository.dart';
import 'package:nuntium/domain/interactors/recommended/recomended_interactor.dart';
import 'package:nuntium/domain/use_cases/filter_articles_by_bookmarks_use_case.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

abstract class BaseRecommendedInteractor implements RecommendedInteractor {
  @protected
  final RecommendedRepository recommendedRepository;
  @protected
  final BookmarksRepository bookmarksRepository;
  @protected
  final NotificationRepository notificationRepository;
  @protected
  final StreamManager<List<ArticleModel>> streamManager;
  @protected
  final SubscriptionManager<FetchRecommendedResult> subscriptionManager;
  @protected
  final FilterArticlesByBookmarksUseCase filterArticlesByBookmarksUseCase;

  BaseRecommendedInteractor({
    required this.recommendedRepository,
    required this.bookmarksRepository,
    required this.notificationRepository,
    required this.streamManager,
    required this.subscriptionManager,
    required this.filterArticlesByBookmarksUseCase,
  });

  @override
  Stream<List<ArticleModel>> get recommendedStream => streamManager.getStream();

  @override
  List<ArticleModel> get currentRecommended => streamManager.valueOrNull ?? [];

  @override
  void init() {
    _subscribeToArticlesStream();
  }

  @override
  void dispose() {
    _unsubscribeFromArticlesStream();
    streamManager.dispose();
  }

  void _subscribeToArticlesStream() {
    _unsubscribeFromArticlesStream();
    subscriptionManager.subscribeToCombinedStreams(
      [
        recommendedRepository.recommendedStream.where(isPeriodValid),
        bookmarksRepository.bookmarksStream,
      ],
      _filterOutBookmarkedArticles,
      _onNewArticlesReceived,
    );
  }

  bool isPeriodValid(FetchRecommendedResult result);

  void _unsubscribeFromArticlesStream() {
    subscriptionManager.unsubscribe();
  }

  FetchRecommendedResult _filterOutBookmarkedArticles(
    List<dynamic> combinedData,
  ) {
    final fetchArticlesResult = combinedData[0] as FetchRecommendedResult;
    final bookmarks = combinedData[1] as List<ArticleModel>;

    final updatedArticles = filterArticlesByBookmarksUseCase.call(
      fetchArticlesResult.articles,
      bookmarks,
    );

    return fetchArticlesResult.copyWith(articles: updatedArticles);
  }

  void _onNewArticlesReceived(FetchRecommendedResult result) {
    streamManager.add(result.articles);

    if (result.isUpdated) {
      _sendNotification(const SnackbarMessage(
        message: LocaleKeys.home_recommended_updated,
      ));
    }
  }

  void _sendNotification(SnackbarMessage message) {
    notificationRepository.sendNotification(message);
  }
}
