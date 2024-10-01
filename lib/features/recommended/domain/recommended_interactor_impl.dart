import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/domain/interactors/recommended/base_recommended_interactor.dart';
import 'package:nuntium/domain/interactors/recommended/recomended_interactor.dart';

@Singleton(as: RecommendedInteractor)
@Named(InjectableNames.recommendedInteractor)
class RecommendedInteractorImpl extends BaseRecommendedInteractor
    implements RecommendedInteractor {
  static const int _requiredPeriod = 30;

  RecommendedInteractorImpl({
    required super.recommendedRepository,
    required super.bookmarksRepository,
    required super.notificationRepository,
    required super.filterArticlesByBookmarksUseCase,
  }) : super(
          streamManager: StreamManagerImpl<List<ArticleModel>>(),
          subscriptionManager:
              SubscriptionManagerImpl<FetchRecommendedResult>(),
        );

  @override
  Future<Either<Failure, Unit>> fetchRecommended([int? period]) =>
      recommendedRepository.fetchRecommended(period ?? _requiredPeriod);

  @override
  bool isPeriodValid(FetchRecommendedResult result) =>
      result.period == _requiredPeriod;
}
