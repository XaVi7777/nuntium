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
@Named(InjectableNames.homeRecommendedInteractor)
class HomeRecommendedInteractorImpl extends BaseRecommendedInteractor
    implements RecommendedInteractor {
  final int _requiredPeriod = 1;

  HomeRecommendedInteractorImpl({
    required super.recommendedRepository,
    required super.bookmarksRepository,
    required super.notificationRepository,
    required super.filterArticlesByBookmarksUseCase,
  }) : super(
          streamManager: StreamManagerImpl<List<ArticleModel>>(),
          subscriptionManager: SubscriptionManagerImpl<FetchRecommendedResult>(),
        );

  @override
  Future<Either<Failure, Unit>> fetchRecommended([int? period]) =>
      super.recommendedRepository.fetchRecommended(period ?? _requiredPeriod);

  @override
  bool isPeriodValid(FetchRecommendedResult result) {
    return result.period == _requiredPeriod;
  }
}
