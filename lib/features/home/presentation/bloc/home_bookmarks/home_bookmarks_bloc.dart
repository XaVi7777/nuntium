import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/domain/interactors/bookmarks/bookmarks_interactor.dart';
import 'package:nuntium/features/home/presentation/bloc/home_bookmarks/home_bookmarks_bloc_models.dart';

@injectable
class HomeBookmarksBloc extends Bloc<HomeBookmarksEvent, HomeBookmarksState> {
  final BookmarksInteractor _bookmarksInteractor;

  HomeBookmarksBloc(
    this._bookmarksInteractor,
  ) : super(const HomeBookmarksState.data()) {
    on<HomeBookmarksEventAddBookmark>(_onAddBookmark);
  }

  FutureOr<void> _onAddBookmark(
    HomeBookmarksEventAddBookmark event,
    Emitter<HomeBookmarksState> emit,
  ) async {
    final article = event.article;

    await _bookmarksInteractor.addBookmark(article);
  }
}
