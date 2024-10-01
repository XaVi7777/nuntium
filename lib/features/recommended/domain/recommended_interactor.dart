import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/export.dart';

abstract class RecommendedInteractor {
  Stream<List<ArticleModel>> get recommendedStream;
  List<ArticleModel> get currentRecommended;

  Future<Either<Failure, Unit>> fetchRecommended([int? period]);

  void dispose();
}
