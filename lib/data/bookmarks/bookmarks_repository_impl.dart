import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/core/storage/database/daos/bookmarked_articles/bookmarked_articles_dao.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/bookmarks/bookmarks_repository.dart';
import 'package:nuntium/data/data_sources/local_datasource/drift_data_sources/bookmarks_local_data_source.dart';
import 'package:nuntium/data/models/article/article_model.dart';

@Singleton(as: BookmarksRepository)
class BookmarksRepositoryImpl implements BookmarksRepository {
  final BookmarksLocalDataSource _localDataSource;
  final StreamManager<List<ArticleModel>> _streamManager;
  final ErrorHandler _errorHandler;

  BookmarksRepositoryImpl({
    required BookmarkedArticlesDao bookmarksDao,
    @Named(InjectableNames.bookmarksRepositoryStreamManager)
    required StreamManager<List<ArticleModel>> streamManager,
    required ErrorHandler errorHandler,
  })  : _localDataSource = BookmarksLocalDataSource(bookmarksDao),
        _streamManager = streamManager,
        _errorHandler = errorHandler;

  List<ArticleModel> _cachedBookmarks = [];

  @override
  Stream<List<ArticleModel>> get bookmarksStream => _streamManager.getStream();

  @override
  List<ArticleModel> get bookmarks => _cachedBookmarks;

  @override
  Future<Either<Failure, Unit>> fetchBookmarks() =>
      _errorHandler.execute(_onFetchBookmarks);

  @override
  Future<Either<Failure, Unit>> addBookmark(ArticleModel article) =>
      _errorHandler.execute(() => _onAddBookmark(article));

  @override
  Future<Either<Failure, Unit>> removeBookmark(ArticleModel article) =>
      _errorHandler.execute(() => _onRemoveBookmark(article));

  @override
  void dispose() {
    _streamManager.dispose();
  }

  Future<Unit> _onFetchBookmarks() async {
    final bookmarks = await _localDataSource.getAll();
    _updateBookmarks(bookmarks);
    return unit;
  }

  Future<Unit> _onAddBookmark(ArticleModel article) async {
    await _localDataSource.add(article);
    final updatedBookmarks = List<ArticleModel>.from(_cachedBookmarks)
      ..add(article);
    _updateBookmarks(updatedBookmarks);
    return unit;
  }

  Future<Unit> _onRemoveBookmark(ArticleModel article) async {
    await _localDataSource.remove(article);
    final updatedBookmarks = List<ArticleModel>.from(_cachedBookmarks)
      ..removeWhere((bookmark) => bookmark.title == article.title);
    _updateBookmarks(updatedBookmarks);
    return unit;
  }

  void _updateBookmarks(List<ArticleModel> bookmarks) {
    _cachedBookmarks = bookmarks;
    _streamManager.add(bookmarks);
  }
}
