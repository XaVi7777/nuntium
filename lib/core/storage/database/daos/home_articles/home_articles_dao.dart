import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/storage/database/app_database.dart';
import 'package:nuntium/core/storage/database/tables/articles/articles_table.dart';
import 'package:nuntium/core/storage/database/tables/home_articles/home_articles_table.dart';

part 'home_articles_dao.g.dart';

@DriftAccessor(tables: [HomeArticlesTable, ArticlesTable])
@lazySingleton
class HomeArticlesDao extends DatabaseAccessor<AppDatabase>
    with _$HomeArticlesDaoMixin {
  HomeArticlesDao(super.attachedDatabase);

  Future<void> insertHomeArticle(
          Insertable<HomeArticlesTableData> homeArticle) =>
      into(homeArticlesTable).insert(homeArticle);

  Future<void> insertHomeArticles(
      List<Insertable<HomeArticlesTableData>> homeArticles) async {
    await batch((batch) {
      batch.insertAll(homeArticlesTable, homeArticles);
    });
  }

  Future<List<ArticlesTableData>> getHomeArticles() async {
    final query = select(homeArticlesTable).join([
      innerJoin(articlesTable,
          articlesTable.uuid.equalsExp(homeArticlesTable.articleUuid)),
    ]);

    final rows = await query.get();

    return rows.map((row) => row.readTable(articlesTable)).toList();
  }

  Future<void> deleteHomeArticle(String articleUuid) {
    return (delete(homeArticlesTable)
          ..where((tbl) => tbl.articleUuid.equals(articleUuid)))
        .go();
  }

  Future<void> deleteAllHomeArticles() => delete(homeArticlesTable).go();

  Future<void> updateHomeArticles(
      List<ArticlesTableCompanion> newArticles) async {
    await transaction(() async {
      await deleteAllHomeArticles();
      for (final article in newArticles) {
        final articleUuid = article.uuid.value;
        await insertHomeArticle(HomeArticlesTableCompanion(
          articleUuid: Value(articleUuid),
        ));
      }
    });
  }
}
