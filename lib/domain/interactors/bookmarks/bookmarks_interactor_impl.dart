import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/bookmarks/bookmarks_repository.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/data/models/snackbar_message/snackbar_message.dart';
import 'package:nuntium/data/models/snackbar_message/snackbar_message_type.dart';
import 'package:nuntium/data/notifications/notifications_repository.dart';
import 'package:nuntium/domain/interactors/bookmarks/bookmarks_interactor.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@Singleton(as: BookmarksInteractor)
class BookmarksInteractorImpl implements BookmarksInteractor {
  final BookmarksRepository _bookmarksRepository;
  final NotificationRepository _notificationRepository;

  final Set<String> _addingBookmarks = {};

  BookmarksInteractorImpl(
    this._bookmarksRepository,
    this._notificationRepository,
  );

  @override
  List<ArticleModel> get bookmarks => _bookmarksRepository.bookmarks;

  @override
  Stream<List<ArticleModel>> get bookmarksStream =>
      _bookmarksRepository.bookmarksStream;

  @override
  Future<Either<Failure, Unit>> fetchBookmarks() =>
      _bookmarksRepository.fetchBookmarks();

  @override
  Future<Either<Failure, Unit>> addBookmark(ArticleModel article) async {
    if (_canAddBookmark(article.uuid)) {
      _markAsAdding(article.uuid);

      final addBookmarkResponse =
          await _bookmarksRepository.addBookmark(article);

      _markAsAdded(article.uuid);

      _sendNotification(
        addBookmarkResponse,
        LocaleKeys.snackbar_manager_added_to_bookmarks,
      );
      return addBookmarkResponse;
    } else {
      return right(unit);
    }
  }

  @override
  Future<Either<Failure, Unit>> removeBookmark(ArticleModel article) async {
    final removeBookmarkResponse =
        await _bookmarksRepository.removeBookmark(article);
    _sendNotification(removeBookmarkResponse,
        LocaleKeys.snackbar_manager_removed_from_bookmarks);
    return removeBookmarkResponse;
  }

  void _sendNotification(
    Either<Failure, Unit> result,
    String successMessageKey,
  ) {
    final message = SnackbarMessage(
      message: result.isRight()
          ? successMessageKey
          : LocaleKeys.something_went_wrong,
      type: result.isRight()
          ? SnackbarMessageType.success
          : SnackbarMessageType.error,
    );
    _notificationRepository.sendNotification(message);
  }

  bool _canAddBookmark(String uuid) {
    return !_addingBookmarks.contains(uuid) &&
        !_bookmarksRepository.bookmarks
            .any((bookmark) => bookmark.uuid == uuid);
  }

  void _markAsAdding(String uuid) {
    _addingBookmarks.add(uuid);
  }

  void _markAsAdded(String uuid) {
    _addingBookmarks.remove(uuid);
  }

  @override
  void dispose() {
    _bookmarksRepository.dispose();
  }
}
