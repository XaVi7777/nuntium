import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart' as drift;
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/drfit/entity_datasource.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/core/storage/database/app_database.dart';
import 'package:nuntium/core/storage/database/daos/articles/articles_dao.dart';
import 'package:nuntium/core/storage/database/daos/recomended_articles/recomended_articles_dao.dart';
import 'package:nuntium/data/models/article/article_model.dart';

@Singleton(as: EntityDataSource<int, ArticleModel>)
class RecommendedLocalDataSource
    implements EntityDataSource<int, ArticleModel> {
  final RecommendedArticlesDao recommendedArticlesDao;

  final ArticlesDao articlesDao;

  RecommendedLocalDataSource({
    required this.recommendedArticlesDao,
    required this.articlesDao,
  });

  @override
  Future<List<ArticleModel>> get(int period) async {
    final articles =
        await recommendedArticlesDao.getRecommendedArticles(period);
    return articles.map(ArticleModelMapper.fromDatabase).toList();
  }

  @override
  Future<Either<Failure, Unit>> delete(int period) async {
    await recommendedArticlesDao.deleteRecommendedArticlesByPeriod(period);
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> save(
      int period, List<ArticleModel> items) async {
    final articlesCompanion =
        items.map((article) => article.toCompanion()).toList();
    await _updateRecommendedArticles(period, articlesCompanion);
    return right(unit);
  }

  Future<void> _updateRecommendedArticles(
    int period,
    List<ArticlesTableCompanion> newArticles,
  ) async {
    await articlesDao.upsertArticles(newArticles);

    final recommendedArticles = newArticles.map((article) {
      return RecommendedArticlesTableCompanion(
        articleUuid: drift.Value(article.uuid.value),
        period: drift.Value(period),
      );
    }).toList();

    await recommendedArticlesDao.deleteRecommendedArticlesByPeriod(period);
    await recommendedArticlesDao.insertRecommendedArticles(recommendedArticles);
  }
}
