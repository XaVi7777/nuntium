import 'package:flutter/material.dart';
import 'package:nuntium/app/widgets/content_padding/content_padding.dart';
import 'package:nuntium/features/bookmarks/presentation/bloc/bookmarks_bloc_models.dart';
import 'package:nuntium/features/bookmarks/presentation/ui/bookmarks_list.dart';
import 'package:nuntium/features/bookmarks/presentation/ui/bookmarks_list_empty.dart';

class BookmarksContent extends StatelessWidget {
  final BookmarksStateData state;

  const BookmarksContent({
    required this.state,
    super.key,
  });

  bool get _isEmpty => state.bookmarks.isEmpty;
  
  @override
  Widget build(BuildContext context) {
    if (_isEmpty) {
      return const BookmarksListEmpty();
    }
    return ContentPadding(
      child: BookmarksList(
        bookmarks: state.bookmarks,
      ),
    );
  }
}
