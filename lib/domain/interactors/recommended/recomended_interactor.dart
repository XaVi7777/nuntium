import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/article/article_model.dart';

abstract class RecommendedInteractor {
  Stream<List<ArticleModel>> get recommendedStream;
  List<ArticleModel> get currentRecommended;

  void init();
  Future<Either<Failure, Unit>> fetchRecommended([int? period]);

  void dispose();
}
