import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/domain/interactors/bookmarks/bookmarks_interactor.dart';
import 'package:nuntium/features/bookmarks/presentation/bloc/bookmarks_bloc_models.dart';

@injectable
class BookmarksBloc extends Bloc<BookmarksEvent, BookmarksState> {
  final BookmarksInteractor _bookmarksInteractor;

  StreamSubscription<List<ArticleModel>>? _bookmarksSubscription;

  BookmarksBloc(
    this._bookmarksInteractor,
  ) : super(const BookmarksState.data(bookmarks: [])) {
    on<BookmarksEventInit>(_onInit);
    on<BookmarksEventUpdateBookmarks>(_onUpdateBookmarks);
    on<BookmarksEventRemoveBookmark>(_onRemoveBookmark);
  }

  @override
  Future<void> close() async {
    await _unsubscribeFromStreams();
    await super.close();
  }

  FutureOr<void> _onInit(
    BookmarksEventInit event,
    Emitter<BookmarksState> emit,
  ) {
    _subscribeToBookmarksStream();
  }

  FutureOr<void> _onRemoveBookmark(
    BookmarksEventRemoveBookmark event,
    Emitter<BookmarksState> emit,
  ) async {
    await _bookmarksInteractor.removeBookmark(event.bookmark);
  }

  FutureOr<void> _onUpdateBookmarks(
      BookmarksEventUpdateBookmarks event, Emitter<BookmarksState> emit) {
    final updatedState = _mapStateWithArticles(event.bookmarks);
    emit(updatedState);
  }

  void _subscribeToBookmarksStream() {
    _bookmarksSubscription ??=
        _bookmarksInteractor.bookmarksStream.listen(_onBookmarksReceived);
  }

  void _onBookmarksReceived(List<ArticleModel> bookmarks) {
    add(BookmarksEvent.updateBookmarks(bookmarks));
  }

  BookmarksState _mapStateWithArticles(List<ArticleModel> bookmarks) =>
      state.map(
        data: (currentState) {
          return currentState.copyWith(bookmarks: bookmarks);
        },
      );

  Future<void> _unsubscribeFromStreams() async {
    await _bookmarksSubscription?.cancel();
    _bookmarksSubscription = null;
  }
}
