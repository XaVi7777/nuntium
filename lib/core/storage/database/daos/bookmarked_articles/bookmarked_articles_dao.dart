import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/storage/database/app_database.dart';
import 'package:nuntium/core/storage/database/tables/articles/articles_table.dart';
import 'package:nuntium/core/storage/database/tables/bookmarked_articles/bookmarked_articles_table.dart';

part 'bookmarked_articles_dao.g.dart';

@DriftAccessor(tables: [BookmarkedArticlesTable, ArticlesTable])
@lazySingleton
class BookmarkedArticlesDao extends DatabaseAccessor<AppDatabase>
    with _$BookmarkedArticlesDaoMixin {
  final AppDatabase db;

  BookmarkedArticlesDao(this.db) : super(db);

  Future<List<ArticlesTableData>> getBookmarkedArticles() {
    final query = select(articlesTable).join([
      innerJoin(bookmarkedArticlesTable,
          bookmarkedArticlesTable.articleUuid.equalsExp(articlesTable.uuid))
    ]);

    return query.map((row) => row.readTable(articlesTable)).get();
  }

  Future<void> addArticleToBookmarks(
      ArticlesTableCompanion articleCompanion) async {
    final articleUuid = articleCompanion.uuid.value;

    await into(bookmarkedArticlesTable).insert(
      BookmarkedArticlesTableCompanion(
        articleUuid: Value(articleUuid),
      ),
    );
    }

  Future<void> removeArticleFromBookmarks(
      ArticlesTableCompanion articleCompanion) async {
    final articleUuid = articleCompanion.uuid.value;

    await (delete(bookmarkedArticlesTable)
          ..where((tbl) => tbl.articleUuid.equals(articleUuid)))
        .go();
    }

  Future<void> clearBookmarks() {
    return delete(bookmarkedArticlesTable).go();
  }
}
