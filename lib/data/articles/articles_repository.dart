import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/export.dart';

abstract class ArticlesRepository {
  Stream<FetchArticlesResult> get articlesStream;

  Future<Either<Failure, Unit>> fetchArticles(
    SectionModel section,
  );
  void dispose();
}
