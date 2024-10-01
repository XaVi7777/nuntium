import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/article/article_model.dart';

part 'bookmarks_bloc_models.freezed.dart';

@freezed
class BookmarksState with _$BookmarksState {
  BookmarksStateData get data => this as BookmarksStateData;

  const BookmarksState._();

  const factory BookmarksState.data({
    required List<ArticleModel> bookmarks,
  }) = BookmarksStateData;
}

@freezed
class BookmarksEvent with _$BookmarksEvent {
  const factory BookmarksEvent.init() = BookmarksEventInit;
  const factory BookmarksEvent.updateBookmarks(List<ArticleModel> bookmarks) =
      BookmarksEventUpdateBookmarks;
  const factory BookmarksEvent.removeBookmark(ArticleModel bookmark) =
      BookmarksEventRemoveBookmark;
}
