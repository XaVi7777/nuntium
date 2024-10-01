import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/export.dart';

abstract class RecommendedRepository {
  int get initialPeriod;
  Stream<FetchRecommendedResult> get recommendedStream;

  Future<Either<Failure, Unit>> fetchRecommended(int period);

  void dispose();
}
