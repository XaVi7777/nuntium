import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/dio_request_wrapper/dio_request_wrapper.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/core/storage/database/daos/export.dart';
import 'package:nuntium/core/stream/stream_manager.dart';
import 'package:nuntium/core/utils/cache_manager/cache_manager.dart';
import 'package:nuntium/data/articles/articles_repository.dart';
import 'package:nuntium/data/data_sources/local_datasource/drift_data_sources/articles_local_data_source.dart';
import 'package:nuntium/data/data_sources/remote_datasource/articles_remote_data_source.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/services/connectivity/connectivity_service.dart';
import 'package:nuntium/services/ny_times_api/export.dart';

@Singleton(as: ArticlesRepository)
class ArticlesRepositoryImpl implements ArticlesRepository {
  final ArticlesRemoteDataSource _remoteDataSource;
  final ArticlesLocalDataSource _localDataSource;
  final CacheManager<String, List<ArticleModel>> _articlesCache;
  final ConnectivityService _connectivityService;
  final ErrorHandler _errorHandler;
  final StreamManager<FetchArticlesResult> _streamManager;

  ArticlesRepositoryImpl({
    required NyTimesApiService nyTimesApiService,
    required ArticlesDao articlesDao,
    required HomeArticlesDao homeArticlesDao,
    required CacheManager<String, List<ArticleModel>> articlesCache,
    required ConnectivityService connectivityService,
    required ErrorHandler errorHandler,
    required DioRequestWrapper dioRequestWrapper,
    required StreamManager<FetchArticlesResult> streamManager,
  })  : _remoteDataSource = ArticlesRemoteDataSource(
          nyTimesApiService: nyTimesApiService,
          dioRequestWrapper: dioRequestWrapper,
        ),
        _localDataSource =
            ArticlesLocalDataSource(articlesDao, homeArticlesDao),
        _articlesCache = articlesCache,
        _connectivityService = connectivityService,
        _errorHandler = errorHandler,
        _streamManager = streamManager;

  Future<bool> get _hasInternetConnection async =>
      _connectivityService.isConnected;

  @override
  Stream<FetchArticlesResult> get articlesStream => _streamManager.getStream();

  @override
  void dispose() {
    _streamManager.dispose();
  }

  @override
  Future<Either<Failure, Unit>> fetchArticles(SectionModel section) =>
      _errorHandler.execute(() => _onFetchArticles(section));

  Future<Unit> _onFetchArticles(SectionModel section) async {
    var isUpdated = false;
    var articles = _getArticlesFromCache(section);

    if (articles?.isEmpty ?? true) {
      if (await _hasInternetConnection) {
        articles = await _getArticlesFromRemoteDataSource(section);
        isUpdated = true;
      } else {
        articles = await _getArticlesFromLocalDataSource(section);
      }
    }
    _updateArticles(
      FetchArticlesResult(
        section: section,
        articles: articles ?? [],
        isUpdated: isUpdated,
      ),
    );

    return unit;
  }

  List<ArticleModel>? _getArticlesFromCache(SectionModel section) =>
      _articlesCache.get(section.type);

  Future<List<ArticleModel>> _getArticlesFromRemoteDataSource(
    SectionModel section,
  ) async {
    final request = _createRequest(section);

    final response = await _remoteDataSource.get(request);
    return response.results;
  }

  Future<List<ArticleModel>> _getArticlesFromLocalDataSource(
    SectionModel section,
  ) =>
      _localDataSource.get(section);

  void _updateArticles(
    FetchArticlesResult result,
  ) {
    _cacheArticles(result.section, result.articles);
    _streamManager.add(result);
  }

  void _cacheArticles(
    SectionModel section,
    List<ArticleModel> articles,
  ) =>
      _articlesCache.update(section.type, articles);

  GetNewsRequest _createRequest(SectionModel section) {
    final params = GetNewsParams(section: section.type);
    return GetNewsRequest(params: params);
  }
}
