import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/config/config.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/core/storage/database/daos/export.dart';
import 'package:nuntium/core/stream/stream_manager.dart';
import 'package:nuntium/data/data_sources/local_datasource/drift_data_sources/recomended_local_data_source.dart';
import 'package:nuntium/data/data_sources/remote_datasource/recommended_remote_data_source.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/data/recommended/recommended_cache.dart';
import 'package:nuntium/data/recommended/recommended_repository.dart';
import 'package:nuntium/services/connectivity/connectivity_service.dart';
import 'package:nuntium/services/ny_times_api/export.dart';
import 'package:nuntium/services/ny_times_api/models/requests/get_recomended_news_request/get_recomended_news_period.dart';

@Singleton(as: RecommendedRepository)
class RecommendedRepositoryImpl implements RecommendedRepository {
  final RecommendedRemoteDataSource _remoteDataSource;
  final RecommendedLocalDataSource _localDataSource;
  final RecommendedCache _recommendedCache;
  final ConnectivityService _connectivityService;
  final ErrorHandler _errorHandler;
  final StreamManager<FetchRecommendedResult> _streamManager;
  final int _defaultRecommendationPeriod;

  RecommendedRepositoryImpl({
    required NyTimesApiService nyTimesApiService,
    required RecommendedArticlesDao recommendedDao,
    required ArticlesDao articlesDao,
    required RecommendedCache recommendedCache,
    required ConnectivityService connectivityService,
    required ErrorHandler errorHandler,
    required Config config,
    required StreamManager<FetchRecommendedResult> streamManager,
  })  : _remoteDataSource = RecommendedRemoteDataSource(
          nyTimesApiService: nyTimesApiService,
        ),
        _localDataSource = RecommendedLocalDataSource(
          recommendedArticlesDao: recommendedDao,
          articlesDao: articlesDao,
        ),
        _recommendedCache = recommendedCache,
        _connectivityService = connectivityService,
        _errorHandler = errorHandler,
        _streamManager = streamManager,
        _defaultRecommendationPeriod = config.defaultRecommendationPeriod;

  @override
  int get initialPeriod => _defaultRecommendationPeriod;

  @override
  Stream<FetchRecommendedResult> get recommendedStream => _streamManager.getStream();

  Future<bool> get _hasInternetConnection async =>
      _connectivityService.isConnected;

  @override
  Future<Either<Failure, Unit>> fetchRecommended(int period) =>
      _errorHandler.execute(() => _onFetchRecommended(period));

  @override
  void dispose() {
    _streamManager.dispose();
  }

  Future<Unit> _onFetchRecommended(int period) async {
    var isUpdated = false;
    var articles = _getRecommendedFromCache(period);

    if (articles?.isEmpty ?? true) {
      if (await _hasInternetConnection) {
        articles = await _getRecommendedFromRemoteDataSource(period);
        isUpdated = true;
      } else {
        articles = await _getRecommendedFromLocalDataSource(period);
      }
    }

    _updateRecommended(
      period,
      articles ?? [],
      isUpdated: isUpdated,
    );

    return unit;
  }

  List<ArticleModel>? _getRecommendedFromCache(int period) =>
      _recommendedCache.get(period);

  Future<List<ArticleModel>> _getRecommendedFromRemoteDataSource(
    int period,
  ) async {
    final request = _createGetRecommendedRequest(period);
    final response = await _remoteDataSource.get(request);
    return response.results;
  }

  Future<List<ArticleModel>> _getRecommendedFromLocalDataSource(
    int period,
  ) =>
      _localDataSource.get(period);

  void _updateRecommended(int period, List<ArticleModel> articles,
      {bool isUpdated = false}) {
    _cacheRecommended(period, articles);
    _addToRecommendedStream(FetchRecommendedResult(
      period: period,
      articles: articles,
      isUpdated: isUpdated,
    ));
  }

  void _cacheRecommended(int period, List<ArticleModel> articles) {
    _recommendedCache.update(period, articles);
  }

  void _addToRecommendedStream(FetchRecommendedResult result) {
    _streamManager.add(result);
  }

  GetRecommendedNewsRequest _createGetRecommendedRequest(int period) {
    final params = GetRecomendedNewsParams(
        period: GetRecomendedNewsPeriodExtension.fromInt(period));
    final request = GetRecommendedNewsRequest(params: params);
    return request;
  }
}
