import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/drfit/entity_datasource.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/core/storage/database/daos/export.dart';

import 'package:nuntium/data/models/export.dart';

@Singleton(as: EntityDataSource<SectionModel, ArticleModel>)
class ArticlesLocalDataSource
    implements EntityDataSource<SectionModel, ArticleModel> {
  final ArticlesDao _articlesDao;

  final HomeArticlesDao _homeArticlesDao;

  ArticlesLocalDataSource(
    this._articlesDao,
    this._homeArticlesDao,
  );

  @override
  Future<List<ArticleModel>> get(SectionModel key) async {
    final articles = key.isHome
        ? await _homeArticlesDao.getHomeArticles()
        : await _articlesDao.getArticlesBySection(key.toCompanion());
    return articles.map(ArticleModelMapper.fromDatabase).toList();
  }

  @override
  Future<Either<Failure, Unit>> save(
      SectionModel key, List<ArticleModel> items) async {
    final articlesCompanion =
        items.map((article) => article.toCompanion()).toList();
    if (key.isHome) {
      await _articlesDao.upsertArticles(articlesCompanion);
      await _homeArticlesDao.updateHomeArticles(articlesCompanion);
    } else {
      await _articlesDao.updateArticlesBySection(
        key.toCompanion(),
        articlesCompanion,
      );
    }
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> delete(SectionModel? key) async {
    if (key == null) {
      await _homeArticlesDao.deleteAllHomeArticles();
    } else {
      await _articlesDao.deleteArticlesBySection(key.toCompanion());
    }
    return right(unit);
  }
}
