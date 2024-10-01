import 'package:injectable/injectable.dart';
import 'package:nuntium/core/extensions/string_ext.dart';
import 'package:nuntium/data/models/article/article_model.dart';

@injectable
class FilterArticlesBySearchUseCase {
  List<ArticleModel> call({
    required List<ArticleModel> articles,
    String? searchValue,
  }) {
    if (searchValue?.isEmpty ?? true) {
      return articles;
    }
    return articles
        .where((article) =>
            article.title.containsIgnoreCase(searchValue!) ||
            article.section.containsIgnoreCase(searchValue))
        .toList();
  }
}
