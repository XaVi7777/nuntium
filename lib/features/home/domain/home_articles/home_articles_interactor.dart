import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/export.dart';

abstract class HomeArticlesInteractor {
  Stream<List<ArticleModel>> get articlesStream;
  List<ArticleModel> get currentArticles;
  void init();
  Future<Either<Failure, Unit>> fetchArticles(SectionModel section);
  void dispose();
}
