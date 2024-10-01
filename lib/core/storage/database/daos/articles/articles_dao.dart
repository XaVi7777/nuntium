import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/storage/database/app_database.dart';
import 'package:nuntium/core/storage/database/tables/articles/articles_table.dart';
import 'package:nuntium/core/storage/database/tables/home_articles/home_articles_table.dart';
import 'package:nuntium/core/storage/database/tables/sections_table/sections_table.dart';

part 'articles_dao.g.dart';

@DriftAccessor(tables: [ArticlesTable, SectionsTable, HomeArticlesTable])
@lazySingleton
class ArticlesDao extends DatabaseAccessor<AppDatabase>
    with _$ArticlesDaoMixin {
  ArticlesDao(super.attachedDatabase);

  Future<List<ArticlesTableData>> getArticlesBySection(
      SectionsTableCompanion sectionCompanion) {
    return (select(articlesTable)
          ..where((tbl) => tbl.section.equals(sectionCompanion.type.value)))
        .get();
  }

  Future<String> insertArticle(Insertable<ArticlesTableData> article) async {
    final articleUuid = (article as ArticlesTableCompanion).uuid.value;
    await into(articlesTable).insertOnConflictUpdate(article);
    return articleUuid;
  }

  Future<void> deleteArticlesBySection(
      SectionsTableCompanion sectionCompanion) {
    return (delete(articlesTable)
          ..where((tbl) => tbl.section.equals(sectionCompanion.type.value)))
        .go();
  }

  Future<void> updateArticlesBySection(SectionsTableCompanion sectionCompanion,
      List<ArticlesTableCompanion> newArticles) async {
    await transaction(() async {
      await deleteArticlesBySection(sectionCompanion);
      for (final article in newArticles) {
        await insertArticle(article);
      }
    });
  }

  Future<void> upsertArticles(List<ArticlesTableCompanion> articles) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(articlesTable, articles);
    });
  }
}
