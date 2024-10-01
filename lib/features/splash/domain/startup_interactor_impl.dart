import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/articles/articles_repository.dart';
import 'package:nuntium/data/bookmarks/bookmarks_repository.dart';
import 'package:nuntium/data/permissions/permissions_repository.dart';
import 'package:nuntium/data/recommended/recommended_repository.dart';
import 'package:nuntium/data/sections/sections_repository.dart';
import 'package:nuntium/data/startup/startup_repository.dart';
import 'package:nuntium/data/user/user_repository.dart';
import 'package:nuntium/features/splash/domain/startup_interactor.dart';

@Singleton(as: StartupInteractor)
class StartupInteractorImpl implements StartupInteractor {
  final UserRepository _userRepository;
  final PermissionsRepository _permissionsRepository;
  final StartupRepository _startupRepository;
  final RecommendedRepository _recommendedRepository;
  final ArticlesRepository _articlesRepository;
  final SectionsRepository _sectionsRepository;
  final BookmarksRepository _bookmarksRepository;

  StartupInteractorImpl(
    this._userRepository,
    this._permissionsRepository,
    this._startupRepository,
    this._recommendedRepository,
    this._articlesRepository,
    this._sectionsRepository,
    this._bookmarksRepository,
  );

  @override
  bool get isAuthorized => _userRepository.isAuthorized();

  @override
  Future<Either<Failure, Unit>> init() async {
    final initResults = await Future.wait([
      _startupRepository.init(),
      _permissionsRepository.init(),
      _userRepository.init(),
    ]);

    return _getFirstFailureOrSuccess(initResults);
  }

  @override
  Future<Either<Failure, Unit>> loadData() async {
    final loadDataResults = await Future.wait([
      _articlesRepository.fetchArticles(_sectionsRepository.activeSection),
      _bookmarksRepository.fetchBookmarks(),
      _sectionsRepository.fetchSections(),
      _recommendedRepository
          .fetchRecommended(_recommendedRepository.initialPeriod),
    ]);

    return _getFirstFailureOrSuccess(loadDataResults);
  }

  Either<Failure, Unit> _getFirstFailureOrSuccess<T>(
      List<Either<Failure, T>> results) {
    for (final result in results) {
      if (result.isLeft()) {
        return left(
            result.swap().getOrElse(() => const Failure.serverFailure('')));
      }
    }
    return right(unit);
  }
}
