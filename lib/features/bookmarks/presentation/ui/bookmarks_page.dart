import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/snackbar_manager/snackbar_manager.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui_list_tile/export.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/features/bookmarks/presentation/bloc/bookmarks_bloc.dart';
import 'package:nuntium/features/bookmarks/presentation/bloc/bookmarks_bloc_models.dart';
import 'package:nuntium/features/bookmarks/presentation/ui/bookmarks_state_mapper.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

@RoutePage()
class BookmarksPage extends StatelessWidget {
  const BookmarksPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return UIPageWrapper(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorTheme.backgroundSurface,
      appBar: UIAppBarWithDescription(
        title: Text(LocaleKeys.bookmarks_title.tr()),
        description: LocaleKeys.bookmarks_description.tr(),
        centerTitle: false,
      ),
      child: SnackbarManager(
        child: BlocProvider<BookmarksBloc>(
          create: (context) => BlocUtils.create<BookmarksBloc, BookmarksEvent>(
            context,
            event: const BookmarksEvent.init(),
          ),
          child: BlocBuilder<BookmarksBloc, BookmarksState>(
            builder: (_, bookmarksState) =>
                BookmarksStateMapper(bookmarksState: bookmarksState),
          ),
        ),
      ),
    );
  }
}
