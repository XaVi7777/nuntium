import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/export.dart';

part 'home_bookmarks_bloc_models.freezed.dart';

@freezed
class HomeBookmarksState with _$HomeBookmarksState {
  HomeBookmarksStateData get data => this as HomeBookmarksStateData;

  const HomeBookmarksState._();

  const factory HomeBookmarksState.data() = HomeBookmarksStateData;
}

@freezed
class HomeBookmarksEvent with _$HomeBookmarksEvent {
  const factory HomeBookmarksEvent.addBookmark(ArticleModel article) =
      HomeBookmarksEventAddBookmark;
}
