import 'package:injectable/injectable.dart';
import 'package:nuntium/data/models/article/article_model.dart';

@injectable
class FilterArticlesByBookmarksUseCase {
  List<ArticleModel> call(
    List<ArticleModel> articles,
    List<ArticleModel> bookmarks,
  ) {
    final bookmarkIds = bookmarks.map((bookmark) => bookmark.uuid).toSet();
    return articles
        .where((article) => !bookmarkIds.contains(article.uuid))
        .toList();
  }
}
