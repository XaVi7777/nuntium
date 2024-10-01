import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/drfit/transaction_datasource.dart';
import 'package:nuntium/core/storage/database/daos/export.dart';
import 'package:nuntium/data/models/article/article_model.dart';

@Singleton(as: TransactionDataSource<ArticleModel>)
class BookmarksLocalDataSource implements TransactionDataSource<ArticleModel> {
  final BookmarkedArticlesDao _bookmarksDao;

  BookmarksLocalDataSource(this._bookmarksDao);

  @override
  Future<List<ArticleModel>> getAll() async {
    final bookmarks = await _bookmarksDao.getBookmarkedArticles();
    return bookmarks.map(ArticleModelMapper.fromDatabase).toList();
  }

  @override
  Future<void> add(ArticleModel item) =>
      _bookmarksDao.addArticleToBookmarks(item.toCompanion());

  @override
  Future<void> remove(ArticleModel item) =>
      _bookmarksDao.removeArticleFromBookmarks(item.toCompanion());

  @override
  Future<void> clear() => _bookmarksDao.clearBookmarks();
}
