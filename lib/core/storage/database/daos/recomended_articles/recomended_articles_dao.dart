import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/storage/database/app_database.dart';
import 'package:nuntium/core/storage/database/tables/articles/articles_table.dart';
import 'package:nuntium/core/storage/database/tables/recommended_articles/recommended_articles_table.dart';

part 'recomended_articles_dao.g.dart';

@DriftAccessor(tables: [RecommendedArticlesTable, ArticlesTable])
@lazySingleton
class RecommendedArticlesDao extends DatabaseAccessor<AppDatabase>
    with _$RecommendedArticlesDaoMixin {
  RecommendedArticlesDao(super.attachedDatabase);

  Future<void> insertRecommendedArticles(
      List<Insertable<RecommendedArticlesTableData>>
          recommendedArticles) async {
    await batch((batch) {
      batch.insertAll(recommendedArticlesTable, recommendedArticles);
    });
  }

  Future<List<ArticlesTableData>> getRecommendedArticles(int period) async {
    final query = select(recommendedArticlesTable).join([
      innerJoin(articlesTable,
          articlesTable.uuid.equalsExp(recommendedArticlesTable.articleUuid))
    ])
      ..where(recommendedArticlesTable.period.equals(period));

    final rows = await query.get();

    return rows.map((row) => row.readTable(articlesTable)).toList();
  }

  Future<void> deleteRecommendedArticle(String articleUuid) {
    return (delete(recommendedArticlesTable)
          ..where((tbl) => tbl.articleUuid.equals(articleUuid)))
        .go();
  }

  Future<void> deleteRecommendedArticlesByPeriod(int period) {
    return (delete(recommendedArticlesTable)
          ..where((tbl) => tbl.period.equals(period)))
        .go();
  }
}
