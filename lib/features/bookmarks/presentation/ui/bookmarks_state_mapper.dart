import 'package:flutter/widgets.dart';
import 'package:nuntium/features/bookmarks/presentation/bloc/bookmarks_bloc_models.dart';
import 'package:nuntium/features/bookmarks/presentation/ui/bookmarks_content.dart';

class BookmarksStateMapper extends StatelessWidget {
  final BookmarksState bookmarksState;

  const BookmarksStateMapper({
    required this.bookmarksState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return bookmarksState.map(
      data: (state) => BookmarksContent(state: state),
    );
  }
}
