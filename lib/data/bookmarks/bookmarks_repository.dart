import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/article/article_model.dart';

abstract class BookmarksRepository {
  List<ArticleModel> get bookmarks;
  Stream<List<ArticleModel>> get bookmarksStream;
  Future<Either<Failure, Unit>> fetchBookmarks();
  Future<Either<Failure, Unit>> addBookmark(ArticleModel article);
  Future<Either<Failure, Unit>> removeBookmark(ArticleModel article);

  void dispose();
}
