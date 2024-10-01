// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_core/firebase_core.dart' as _i982;
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../arch/dio_error_handler/dio_error_handler.dart' as _i54;
import '../arch/dio_error_handler/models/default_api_error.dart' as _i321;
import '../arch/dio_request_wrapper/dio_request_wrapper.dart' as _i1041;
import '../arch/drfit/entity_datasource.dart' as _i708;
import '../arch/drfit/reference_datasource.dart' as _i79;
import '../arch/drfit/transaction_datasource.dart' as _i797;
import '../arch/easy_localisation/easy_logger_wrapper.dart' as _i518;
import '../arch/firebase/firebase_module.dart' as _i645;
import '../arch/key_value_store/key_value_store.dart' as _i129;
import '../arch/key_value_store/key_value_store_migrator.dart' as _i119;
import '../core/http/dio_client_creator.dart' as _i841;
import '../core/http/dio_client_creator_impl.dart' as _i230;
import '../core/http/dio_client_module.dart' as _i635;
import '../core/http/link_provider.dart' as _i427;
import '../core/infrastructure/cancellable_request_manager.dart' as _i500;
import '../core/infrastructure/dio_logger_wrapper.dart' as _i675;
import '../core/infrastructure/error_handler/error_handler.dart' as _i91;
import '../core/infrastructure/infrastructure_module.dart' as _i407;
import '../core/infrastructure/logger_bloc_observer.dart' as _i704;
import '../core/storage/database/app_database.dart' as _i139;
import '../core/storage/database/daos/articles/articles_dao.dart' as _i809;
import '../core/storage/database/daos/bookmarked_articles/bookmarked_articles_dao.dart'
    as _i559;
import '../core/storage/database/daos/export.dart' as _i876;
import '../core/storage/database/daos/home_articles/home_articles_dao.dart'
    as _i550;
import '../core/storage/database/daos/recomended_articles/recomended_articles_dao.dart'
    as _i37;
import '../core/storage/database/daos/sections/sections_dao.dart' as _i315;
import '../core/storage/database/db_module.dart' as _i624;
import '../core/storage/migration_observer_logger/migration_observer_logger.dart'
    as _i70;
import '../core/storage/shared_prefs/prefs_key_value_store.dart' as _i858;
import '../core/stream/export.dart' as _i37;
import '../core/stream/stream_manager.dart' as _i1022;
import '../core/stream/subscription_manager.dart' as _i17;
import '../core/utils/cache_manager/cache_manager.dart' as _i254;
import '../data/articles/articles_cache.dart' as _i473;
import '../data/articles/articles_repository.dart' as _i508;
import '../data/articles/articles_repository_impl.dart' as _i749;
import '../data/articles/articles_stream_manager.dart' as _i160;
import '../data/bookmarks/bookmarks_repository.dart' as _i941;
import '../data/bookmarks/bookmarks_repository_impl.dart' as _i135;
import '../data/bookmarks/bookmarks_stream_manager.dart' as _i402;
import '../data/data_sources/local_datasource/drift_data_sources/articles_local_data_source.dart'
    as _i653;
import '../data/data_sources/local_datasource/drift_data_sources/bookmarks_local_data_source.dart'
    as _i371;
import '../data/data_sources/local_datasource/drift_data_sources/recomended_local_data_source.dart'
    as _i596;
import '../data/data_sources/local_datasource/drift_data_sources/sections_local_data_source.dart'
    as _i820;
import '../data/data_sources/local_datasource/shared_prefs_data_sources/permissions_local_data_source/permissions_local_data_source.dart'
    as _i463;
import '../data/data_sources/local_datasource/shared_prefs_data_sources/permissions_local_data_source/permissions_local_data_source_impl.dart'
    as _i239;
import '../data/data_sources/local_datasource/shared_prefs_data_sources/user_local_data_source/user_local_data_source.dart'
    as _i26;
import '../data/data_sources/local_datasource/shared_prefs_data_sources/user_local_data_source/user_local_data_source_impl.dart'
    as _i686;
import '../data/data_sources/remote_datasource/articles_remote_data_source.dart'
    as _i612;
import '../data/data_sources/remote_datasource/recommended_remote_data_source.dart'
    as _i1053;
import '../data/data_sources/remote_datasource/remote_datasource.dart'
    as _i1042;
import '../data/main_index/main_index_repository.dart' as _i1001;
import '../data/main_index/main_index_repository_impl.dart' as _i43;
import '../data/models/article/article_model.dart' as _i153;
import '../data/models/article/fetch_articles_result.dart' as _i637;
import '../data/models/article/fetch_recommended_result.dart' as _i1022;
import '../data/models/export.dart' as _i717;
import '../data/models/section/section_model.dart' as _i183;
import '../data/notifications/notifications_repository.dart' as _i299;
import '../data/notifications/notifications_repository_impl.dart' as _i767;
import '../data/permissions/permissions_repository.dart' as _i871;
import '../data/permissions/permissions_repository_impl.dart' as _i991;
import '../data/recommended/recommended_cache.dart' as _i727;
import '../data/recommended/recommended_repository.dart' as _i425;
import '../data/recommended/recommended_repository_impl.dart' as _i356;
import '../data/recommended/recommended_stream_manager.dart' as _i101;
import '../data/remote_notifications/remote_notifications_repository.dart'
    as _i705;
import '../data/remote_notifications/remote_notifications_repository_impl.dart'
    as _i487;
import '../data/sections/sections_repository.dart' as _i213;
import '../data/sections/sections_repository_impl.dart' as _i337;
import '../data/sections/sections_stream_manager.dart' as _i1058;
import '../data/startup/startup_repository.dart' as _i624;
import '../data/startup/startup_repository_impl.dart' as _i600;
import '../data/user/auth_state_manager.dart' as _i346;
import '../data/user/user_repository.dart' as _i692;
import '../data/user/user_repository_impl.dart' as _i767;
import '../domain/interactors/auth/auth_interactor.dart' as _i198;
import '../domain/interactors/auth/auth_interactor_impl.dart' as _i252;
import '../domain/interactors/bookmarks/bookmarks_interactor.dart' as _i68;
import '../domain/interactors/bookmarks/bookmarks_interactor_impl.dart'
    as _i504;
import '../domain/interactors/notification/notification_interactor.dart'
    as _i460;
import '../domain/interactors/notification/notification_interactor_impl.dart'
    as _i1027;
import '../domain/interactors/recommended/recomended_interactor.dart' as _i670;
import '../domain/interactors/sections/sections_interactor.dart' as _i980;
import '../domain/interactors/sections/sections_interactor_impl.dart' as _i873;
import '../domain/use_cases/check_permission_use_case.dart' as _i785;
import '../domain/use_cases/filter_articles_by_active_section_use_case.dart'
    as _i949;
import '../domain/use_cases/filter_articles_by_bookmarks_use_case.dart' as _i12;
import '../domain/use_cases/filter_articles_by_search_use_case.dart' as _i675;
import '../domain/use_cases/is_denied_notification_permission_use_case.dart'
    as _i69;
import '../domain/use_cases/open_app_settings_use_case.dart' as _i834;
import '../domain/use_cases/request_permission_use_case.dart' as _i349;
import '../domain/use_cases/send_notification_use_case.dart' as _i584;
import '../domain/use_cases/set_permission_has_been_requested_use_case.dart'
    as _i55;
import '../features/bookmarks/presentation/bloc/bookmarks_bloc.dart' as _i1032;
import '../features/forgot_password/presentation/bloc/forgot_password_bloc.dart'
    as _i626;
import '../features/home/domain/home_articles/home_articles_interactor.dart'
    as _i250;
import '../features/home/domain/home_articles/home_articles_interactor_impl.dart'
    as _i899;
import '../features/home/domain/home_articles/home_articles_stream_manager.dart'
    as _i964;
import '../features/home/domain/home_articles/home_articles_subscription_manager.dart'
    as _i940;
import '../features/home/domain/home_recommended/home_recommended_interactor_impl.dart'
    as _i380;
import '../features/home/presentation/bloc/home_articles/home_articles_bloc.dart'
    as _i1000;
import '../features/home/presentation/bloc/home_articles/home_articles_subscription_manager.dart'
    as _i386;
import '../features/home/presentation/bloc/home_bookmarks/home_bookmarks_bloc.dart'
    as _i624;
import '../features/home/presentation/bloc/home_recommended/home_recommended_bloc.dart'
    as _i118;
import '../features/home/presentation/bloc/home_recommended/home_recommended_subscription_manager.dart'
    as _i427;
import '../features/home/presentation/bloc/home_sections/home_sections_bloc.dart'
    as _i550;
import '../features/home/presentation/bloc/home_sections/home_sections_subscription_manager.dart'
    as _i149;
import '../features/main/domain/main_index_interactor.dart' as _i985;
import '../features/main/domain/main_index_interactor_impl.dart' as _i1059;
import '../features/main/presentation/bloc/main_bloc.dart' as _i959;
import '../features/permissions/presentation/bloc/permissions_bloc.dart'
    as _i290;
import '../features/profile/domain/user/user_interactor.dart' as _i972;
import '../features/profile/domain/user/user_interactor_impl.dart' as _i538;
import '../features/profile/presentation/bloc/profile_bloc.dart' as _i570;
import '../features/profile/presentation/bloc/profile_subscription_manager.dart'
    as _i3;
import '../features/recommended/domain/recommended_interactor_impl.dart'
    as _i881;
import '../features/recommended/presentation/bloc/recommended/recommended_bloc.dart'
    as _i656;
import '../features/recommended/presentation/bloc/recommended/recommended_subscription_manager.dart'
    as _i582;
import '../features/sections/presentation/bloc/sections_bloc.dart' as _i923;
import '../features/sections/presentation/bloc/sections_subscription_manager.dart'
    as _i914;
import '../features/sign_in/presentation/bloc/sign_in_bloc.dart' as _i298;
import '../features/sign_up/presentation/bloc/sign_up_bloc.dart' as _i418;
import '../features/splash/domain/startup_interactor.dart' as _i875;
import '../features/splash/domain/startup_interactor_impl.dart' as _i3;
import '../features/splash/presentation/bloc/splash_bloc.dart' as _i358;
import '../services/app_lifecycle_service/app_lifecycle_service.dart' as _i527;
import '../services/app_lifecycle_service/app_lifecycle_service_module.dart'
    as _i765;
import '../services/auth/aurh_module.dart' as _i698;
import '../services/auth/auth_service.dart' as _i305;
import '../services/connectivity/connectivity_service.dart' as _i1015;
import '../services/connectivity/connectivity_service_impl.dart' as _i916;
import '../services/firebase_messaging/firebase_messaging_module.dart' as _i272;
import '../services/firebase_messaging/firebase_messaging_service.dart'
    as _i183;
import '../services/ny_times_api/export.dart' as _i445;
import '../services/ny_times_api/ny_times_api_service_impl.dart' as _i881;
import '../services/permissions/permissions_module.dart' as _i247;
import '../services/permissions/permissions_service.dart' as _i824;
import 'app_environment.dart' as _i710;
import 'config/config.dart' as _i142;
import 'config/config_module.dart' as _i602;
import 'config/ny_times_api_service_config.dart' as _i535;
import 'router/app_router.dart' as _i722;
import 'router/auth_reevaluate_listenable.dart' as _i310;
import 'router/bloc/navigation_bloc.dart' as _i591;
import 'router/guards/auth_guard.dart' as _i239;
import 'router/guards/init_guard.dart' as _i924;
import 'router/guards/notification_permission_guard.dart' as _i1039;
import 'router/router_logging_observer.dart' as _i504;
import 'router/router_module.dart' as _i1029;
import 'router/services/navigation_service.dart' as _i965;
import 'theme/bloc/app_theme_bloc.dart' as _i615;
import 'widgets/snackbar_manager/bloc/snackbar_manager_bloc.dart' as _i211;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final configModule = _$ConfigModule();
  final firebaseModule = _$FirebaseModule();
  final authModule = _$AuthModule();
  final firebaseMessagingModule = _$FirebaseMessagingModule();
  final permissionsModule = _$PermissionsModule();
  final infrastructureModule = _$InfrastructureModule();
  final appLifecycleServiceModule = _$AppLifecycleServiceModule();
  final dioClientModule = _$DioClientModule();
  final routerModule = _$RouterModule();
  final dbModule = _$DbModule();
  await gh.factoryAsync<_i142.Config>(
    () => configModule.config,
    preResolve: true,
  );
  gh.factory<_i626.ForgotPasswordBloc>(() => _i626.ForgotPasswordBloc());
  await gh.factoryAsync<_i982.FirebaseApp>(
    () => firebaseModule.initFirebaseApp,
    preResolve: true,
  );
  gh.factory<_i834.OpenAppSettingsUseCase>(
      () => _i834.OpenAppSettingsUseCase());
  gh.factory<_i675.FilterArticlesBySearchUseCase>(
      () => _i675.FilterArticlesBySearchUseCase());
  gh.factory<_i12.FilterArticlesByBookmarksUseCase>(
      () => _i12.FilterArticlesByBookmarksUseCase());
  gh.singleton<_i427.LinkProvider>(() => _i427.LinkProvider());
  gh.singleton<_i615.AppThemeBloc>(() => _i615.AppThemeBloc());
  gh.singleton<_i59.FirebaseAuth>(() => authModule.firebaseAuth);
  gh.singleton<_i116.GoogleSignIn>(() => authModule.googleSignIn);
  gh.singleton<_i305.AuthService>(() => authModule.authService);
  gh.singleton<_i892.FirebaseMessaging>(
      () => firebaseMessagingModule.firebaseMessaging());
  gh.singleton<_i824.PermissionsService>(
      () => permissionsModule.permissionsService());
  gh.lazySingleton<_i895.Connectivity>(
      () => infrastructureModule.connectivity());
  gh.lazySingleton<_i500.CancelableRequestManagerFactory>(
      () => infrastructureModule.cancelableRequestManagerFactory());
  gh.lazySingleton<_i535.NyTimesApiServiceConfig>(
      () => configModule.nyTimesApiServiceConfig);
  gh.lazySingleton<_i346.AuthStateManager>(() => _i346.AuthStateManager());
  gh.lazySingleton<_i527.AppLifecycleService>(
      () => appLifecycleServiceModule.provideAppLifecycleService());
  gh.lazySingleton<_i37.SubscriptionManager<List<_i717.SectionModel>>>(
    () => _i149.HomeArticlesSubscriptionManager(),
    instanceName: 'HomeSectionsBlocSubscriptionManager',
  );
  gh.lazySingleton<_i37.SubscriptionManager<List<_i717.ArticleModel>>>(
    () => _i582.RecommendedSubscriptionManager(),
    instanceName: 'RecommendedBlocSubscriptionManager',
  );
  gh.lazySingleton<_i1022.StreamManager<List<_i153.ArticleModel>>>(
    () => _i402.BookmarksStreamManager(),
    instanceName: 'BookmarksRepositoryStreamManager',
  );
  gh.lazySingleton<_i129.KeyValueStore>(() => _i858.SharedPrefsKeyValueStore());
  gh.lazySingleton<_i37.SubscriptionManager<List<_i717.ArticleModel>>>(
      () => _i386.HomeArticlesSubscriptionManager());
  gh.singleton<_i299.NotificationRepository>(
      () => _i767.NotificationRepositoryImpl());
  gh.lazySingleton<_i37.SubscriptionManager<_i637.FetchArticlesResult>>(
      () => _i940.HomeArticlesSubscriptionManager());
  gh.lazySingleton<_i1022.StreamManager<_i1022.FetchRecommendedResult>>(
      () => _i101.ArticlesStreamManager());
  gh.lazySingleton<_i37.SubscriptionManager<List<_i717.SectionModel>>>(
    () => _i914.SectionsSubscriptionManager(),
    instanceName: 'RecommendedBlocSubscriptionManager',
  );
  gh.lazySingleton<_i1022.StreamManager<_i637.FetchArticlesResult>>(
      () => _i160.ArticlesStreamManager());
  gh.lazySingleton<_i37.StreamManager<List<_i183.SectionModel>>>(
      () => _i1058.ArticlesStreamManager());
  gh.lazySingleton<_i37.StreamManager<List<_i153.ArticleModel>>>(
      () => _i964.HomeArticlesStreamManager());
  gh.lazySingleton<_i37.SubscriptionManager<List<_i717.ArticleModel>>>(
    () => _i427.HomeRecommendedSubscriptionManager(),
    instanceName: 'HomeRecommendedBlocSubscriptionManager',
  );
  gh.lazySingleton<_i37.SubscriptionManager<_i717.UserModel>>(
      () => _i3.ProfileSubscriptionManager());
  gh.lazySingleton<_i675.DioLoggerWrapper>(
      () => infrastructureModule.dioLoggerWrapper(gh<_i710.AppEnvironment>()));
  gh.lazySingleton<_i974.Logger>(
      () => infrastructureModule.logger(gh<_i710.AppEnvironment>()));
  gh.singleton<_i1001.MainIndexRepository>(
      () => _i43.MainIndexRepositoryImpl());
  gh.singleton<_i841.DioClientCreator>(() => _i230.DioClientCreatorImpl(
        linkProvider: gh<_i427.LinkProvider>(),
        logger: gh<_i675.DioLoggerWrapper>(),
        appEnvironment: gh<_i710.AppEnvironment>(),
        nyTimesApiServiceConfig: gh<_i535.NyTimesApiServiceConfig>(),
      ));
  gh.lazySingleton<_i254.CacheManager<String, List<_i153.ArticleModel>>>(
      () => _i473.ArticlesCache(gh<_i142.Config>()));
  gh.lazySingleton<_i1015.ConnectivityService>(
      () => _i916.ConnectivityServiceImpl(gh<_i895.Connectivity>()));
  gh.lazySingleton<_i463.PermissionsLocalDataSource>(
      () => _i239.PermissionsLocalDataSourceImpl(gh<_i129.KeyValueStore>()));
  await gh.singletonAsync<_i361.Dio>(
    () => dioClientModule.makeDioClient(gh<_i841.DioClientCreator>()),
    instanceName: 'nyTimesHttpClient',
    preResolve: true,
  );
  gh.factory<_i584.SendNotificationUseCase>(
      () => _i584.SendNotificationUseCase(gh<_i299.NotificationRepository>()));
  gh.singleton<_i727.RecommendedCache>(
      () => _i727.RecommendedCache(gh<_i142.Config>()));
  gh.singleton<_i624.StartupRepository>(
      () => _i600.StartupRepositoryImpl(gh<_i129.KeyValueStore>()));
  gh.lazySingleton<_i26.UserLocalDataSource>(
      () => _i686.UserLocalDataSourceImpl(gh<_i129.KeyValueStore>()));
  gh.singleton<_i460.NotificationInteractor>(() =>
      _i1027.NotificationInteractorImpl(gh<_i299.NotificationRepository>()));
  gh.singleton<_i183.FirebaseMessagingService>(() => firebaseMessagingModule
      .firebaseMessagingService(gh<_i892.FirebaseMessaging>()));
  gh.singleton<_i445.NyTimesApiService>(() => _i881.NyTimesApiServiceImpl(
        gh<_i361.Dio>(instanceName: 'nyTimesHttpClient'),
        gh<_i535.NyTimesApiServiceConfig>(),
      ));
  gh.lazySingleton<_i70.MigrationObserverLogger>(
      () => _i70.MigrationObserverLogger(gh<_i974.Logger>()));
  gh.lazySingleton<_i54.DioErrorHandler<_i321.DefaultApiError>>(
      () => dioClientModule.makeDioErrorHandler(gh<_i974.Logger>()));
  gh.lazySingleton<_i1041.DioRequestWrapper>(
      () => dioClientModule.makeDioRequestWrapper(gh<_i974.Logger>()));
  gh.lazySingleton<_i91.ErrorHandler>(
      () => infrastructureModule.errorHandler(gh<_i974.Logger>()));
  gh.factory<_i704.LoggerBlocObserver>(
      () => _i704.LoggerBlocObserver(gh<_i974.Logger>()));
  gh.singleton<_i985.MainIndexInteractor>(
      () => _i1059.MainIndexInteractorImpl(gh<_i1001.MainIndexRepository>()));
  gh.singleton<
      _i1042.RemoteDataSource<_i445.GetRecommendedNewsRequest,
          _i445.GetRecommendedNewsResponse>>(() =>
      _i1053.RecommendedRemoteDataSource(
          nyTimesApiService: gh<_i445.NyTimesApiService>()));
  gh.singleton<_i924.InitGuard>(
      () => routerModule.initGuard(gh<_i624.StartupRepository>()));
  gh.lazySingleton<_i518.EasyLoggerWrapper>(
      () => _i518.EasyLoggerWrapper(gh<_i974.Logger>()));
  gh.factory<_i959.MainBloc>(
      () => _i959.MainBloc(gh<_i985.MainIndexInteractor>()));
  gh.singleton<
          _i1042.RemoteDataSource<_i445.GetNewsRequest, _i717.GetNewsResponse>>(
      () => _i612.ArticlesRemoteDataSource(
            nyTimesApiService: gh<_i445.NyTimesApiService>(),
            dioRequestWrapper: gh<_i1041.DioRequestWrapper>(),
          ));
  gh.lazySingleton<_i119.KeyValueStoreMigrator>(
      () => _i858.KeyValueStoreMigratorImpl(
            keyValueStore: gh<_i129.KeyValueStore>(),
            observer: gh<_i70.MigrationObserverLogger>(),
          ));
  gh.factory<_i211.SnackbarManagerBloc>(
      () => _i211.SnackbarManagerBloc(gh<_i460.NotificationInteractor>()));
  gh.singleton<_i705.RemoteNotificationsRepository>(
      () => _i487.RemoteNotificationsRepositoryImpl(
            gh<_i183.FirebaseMessagingService>(),
            gh<_i91.ErrorHandler>(),
            gh<_i463.PermissionsLocalDataSource>(),
          ));
  gh.singleton<_i692.UserRepository>(() => _i767.UserRepositoryImpl(
        gh<_i305.AuthService>(),
        gh<_i26.UserLocalDataSource>(),
        gh<_i346.AuthStateManager>(),
        gh<_i91.ErrorHandler>(),
      ));
  gh.singleton<_i198.AuthInteractor>(() => _i252.AuthInteractorImpl(
        gh<_i692.UserRepository>(),
        gh<_i299.NotificationRepository>(),
      ));
  gh.singleton<_i871.PermissionsRepository>(
      () => _i991.PermissionsRepositoryImpl(
            gh<_i824.PermissionsService>(),
            gh<_i91.ErrorHandler>(),
          ));
  gh.singleton<_i1039.NotificationPermissionGuard>(() => routerModule
      .notificationPermissionGuard(gh<_i705.RemoteNotificationsRepository>()));
  gh.lazySingleton<_i139.AppDatabase>(
      () => dbModule.appDatabase(observer: gh<_i70.MigrationObserverLogger>()));
  gh.singleton<_i972.UserInteractor>(
      () => _i538.UserInteractorImpl(gh<_i692.UserRepository>()));
  gh.factory<_i55.SetPermissionHasBeenRequestedUseCase>(() =>
      _i55.SetPermissionHasBeenRequestedUseCase(
          gh<_i705.RemoteNotificationsRepository>()));
  gh.lazySingleton<_i315.SectionsDao>(
      () => _i315.SectionsDao(gh<_i139.AppDatabase>()));
  gh.lazySingleton<_i559.BookmarkedArticlesDao>(
      () => _i559.BookmarkedArticlesDao(gh<_i139.AppDatabase>()));
  gh.singleton<_i239.AuthGuard>(
      () => routerModule.authGuard(gh<_i692.UserRepository>()));
  gh.factory<_i570.ProfileBloc>(() => _i570.ProfileBloc(
        gh<_i972.UserInteractor>(),
        gh<_i198.AuthInteractor>(),
        gh<_i37.SubscriptionManager<_i717.UserModel>>(),
      ));
  gh.singleton<_i79.ReferenceDataSource<_i183.SectionModel>>(
      () => _i820.SectionsLocalDataSource(gh<_i876.SectionsDao>()));
  gh.lazySingleton<_i550.HomeArticlesDao>(
      () => _i550.HomeArticlesDao(gh<_i139.AppDatabase>()));
  gh.lazySingleton<_i809.ArticlesDao>(
      () => _i809.ArticlesDao(gh<_i139.AppDatabase>()));
  gh.lazySingleton<_i37.RecommendedArticlesDao>(
      () => _i37.RecommendedArticlesDao(gh<_i139.AppDatabase>()));
  gh.singleton<_i797.TransactionDataSource<_i153.ArticleModel>>(
      () => _i371.BookmarksLocalDataSource(gh<_i876.BookmarkedArticlesDao>()));
  gh.factory<_i349.RequestPermissionUseCase>(
      () => _i349.RequestPermissionUseCase(
            gh<_i871.PermissionsRepository>(),
            gh<_i705.RemoteNotificationsRepository>(),
            gh<_i299.NotificationRepository>(),
          ));
  gh.singleton<_i708.EntityDataSource<int, _i153.ArticleModel>>(
      () => _i596.RecommendedLocalDataSource(
            recommendedArticlesDao: gh<_i37.RecommendedArticlesDao>(),
            articlesDao: gh<_i809.ArticlesDao>(),
          ));
  gh.factory<_i69.IsDeniedNotificationPermissionUseCase>(() =>
      _i69.IsDeniedNotificationPermissionUseCase(
          gh<_i705.RemoteNotificationsRepository>()));
  gh.factory<_i785.CheckPermissionUseCase>(() => _i785.CheckPermissionUseCase(
        gh<_i871.PermissionsRepository>(),
        gh<_i705.RemoteNotificationsRepository>(),
      ));
  gh.factory<_i298.SignInBloc>(
      () => _i298.SignInBloc(gh<_i198.AuthInteractor>()));
  gh.factory<_i418.SignUpBloc>(
      () => _i418.SignUpBloc(gh<_i198.AuthInteractor>()));
  gh.singleton<_i508.ArticlesRepository>(() => _i749.ArticlesRepositoryImpl(
        nyTimesApiService: gh<_i445.NyTimesApiService>(),
        articlesDao: gh<_i876.ArticlesDao>(),
        homeArticlesDao: gh<_i876.HomeArticlesDao>(),
        articlesCache:
            gh<_i254.CacheManager<String, List<_i717.ArticleModel>>>(),
        connectivityService: gh<_i1015.ConnectivityService>(),
        errorHandler: gh<_i91.ErrorHandler>(),
        dioRequestWrapper: gh<_i1041.DioRequestWrapper>(),
        streamManager: gh<_i1022.StreamManager<_i717.FetchArticlesResult>>(),
      ));
  gh.singleton<_i941.BookmarksRepository>(() => _i135.BookmarksRepositoryImpl(
        bookmarksDao: gh<_i559.BookmarkedArticlesDao>(),
        streamManager: gh<_i37.StreamManager<List<_i153.ArticleModel>>>(
            instanceName: 'BookmarksRepositoryStreamManager'),
        errorHandler: gh<_i91.ErrorHandler>(),
      ));
  gh.singleton<_i722.AppRouter>(() => routerModule.appRouter(
        gh<_i239.AuthGuard>(),
        gh<_i924.InitGuard>(),
        gh<_i1039.NotificationPermissionGuard>(),
      ));
  gh.singleton<_i68.BookmarksInteractor>(() => _i504.BookmarksInteractorImpl(
        gh<_i941.BookmarksRepository>(),
        gh<_i299.NotificationRepository>(),
      ));
  gh.singleton<_i213.SectionsRepository>(() => _i337.SectionsRepositoryImpl(
        sectionsDao: gh<_i315.SectionsDao>(),
        config: gh<_i142.Config>(),
        streamManager: gh<_i37.StreamManager<List<_i717.SectionModel>>>(),
        errorHandler: gh<_i91.ErrorHandler>(),
      ));
  gh.factory<_i624.HomeBookmarksBloc>(
      () => _i624.HomeBookmarksBloc(gh<_i68.BookmarksInteractor>()));
  gh.factory<_i1032.BookmarksBloc>(
      () => _i1032.BookmarksBloc(gh<_i68.BookmarksInteractor>()));
  gh.singleton<_i425.RecommendedRepository>(() =>
      _i356.RecommendedRepositoryImpl(
        nyTimesApiService: gh<_i445.NyTimesApiService>(),
        recommendedDao: gh<_i876.RecommendedArticlesDao>(),
        articlesDao: gh<_i876.ArticlesDao>(),
        recommendedCache: gh<_i727.RecommendedCache>(),
        connectivityService: gh<_i1015.ConnectivityService>(),
        errorHandler: gh<_i91.ErrorHandler>(),
        config: gh<_i142.Config>(),
        streamManager: gh<_i1022.StreamManager<_i717.FetchRecommendedResult>>(),
      ));
  gh.singleton<_i875.StartupInteractor>(() => _i3.StartupInteractorImpl(
        gh<_i692.UserRepository>(),
        gh<_i871.PermissionsRepository>(),
        gh<_i624.StartupRepository>(),
        gh<_i425.RecommendedRepository>(),
        gh<_i508.ArticlesRepository>(),
        gh<_i213.SectionsRepository>(),
        gh<_i941.BookmarksRepository>(),
      ));
  gh.singleton<_i670.RecommendedInteractor>(
    () => _i380.HomeRecommendedInteractorImpl(
      recommendedRepository: gh<_i425.RecommendedRepository>(),
      bookmarksRepository: gh<_i941.BookmarksRepository>(),
      notificationRepository: gh<_i299.NotificationRepository>(),
      filterArticlesByBookmarksUseCase:
          gh<_i12.FilterArticlesByBookmarksUseCase>(),
    ),
    instanceName: 'HomeRecommendedInteractor',
  );
  gh.singleton<_i708.EntityDataSource<_i717.SectionModel, _i717.ArticleModel>>(
      () => _i653.ArticlesLocalDataSource(
            gh<_i876.ArticlesDao>(),
            gh<_i876.HomeArticlesDao>(),
          ));
  gh.factory<_i118.HomeRecommendedBloc>(() => _i118.HomeRecommendedBloc(
        homeRecommendedInteractor: gh<_i670.RecommendedInteractor>(
            instanceName: 'HomeRecommendedInteractor'),
        filterArticlesBySearchUseCase:
            gh<_i675.FilterArticlesBySearchUseCase>(),
        subscriptionManager:
            gh<_i37.SubscriptionManager<List<_i153.ArticleModel>>>(
                instanceName: 'HomeRecommendedBlocSubscriptionManager'),
      ));
  gh.factory<_i290.PermissionsBloc>(() => _i290.PermissionsBloc(
        gh<_i69.IsDeniedNotificationPermissionUseCase>(),
        gh<_i349.RequestPermissionUseCase>(),
        gh<_i834.OpenAppSettingsUseCase>(),
        gh<_i785.CheckPermissionUseCase>(),
        gh<_i527.AppLifecycleService>(),
        gh<_i55.SetPermissionHasBeenRequestedUseCase>(),
      ));
  gh.singleton<_i310.AppReevaluateListenable>(
      () => routerModule.appReevaluateListenable(
            gh<_i722.AppRouter>(),
            gh<_i692.UserRepository>(),
          ));
  gh.factory<_i504.RouterLoggingObserver>(
      () => routerModule.routerLoggingObserver(
            gh<_i974.Logger>(),
            gh<_i722.AppRouter>(),
          ));
  gh.factory<_i949.FilterArticlesByActiveSectionUseCase>(() =>
      _i949.FilterArticlesByActiveSectionUseCase(
          gh<_i213.SectionsRepository>()));
  gh.singleton<_i965.NavigationService>(
      () => routerModule.navigationService(gh<_i722.AppRouter>()));
  gh.singleton<_i250.HomeArticlesInteractor>(
      () => _i899.HomeArticlesInteractorImpl(
            gh<_i508.ArticlesRepository>(),
            gh<_i941.BookmarksRepository>(),
            gh<_i584.SendNotificationUseCase>(),
            gh<_i12.FilterArticlesByBookmarksUseCase>(),
            gh<_i949.FilterArticlesByActiveSectionUseCase>(),
            gh<_i37.StreamManager<List<_i717.ArticleModel>>>(),
            gh<_i37.SubscriptionManager<_i717.FetchArticlesResult>>(),
          ));
  gh.factory<_i358.SplashBloc>(
      () => _i358.SplashBloc(gh<_i875.StartupInteractor>()));
  gh.singleton<_i980.SectionsInteractor>(
      () => _i873.SectionsInteractorImpl(gh<_i213.SectionsRepository>()));
  gh.singleton<_i670.RecommendedInteractor>(
    () => _i881.RecommendedInteractorImpl(
      recommendedRepository: gh<_i425.RecommendedRepository>(),
      bookmarksRepository: gh<_i941.BookmarksRepository>(),
      notificationRepository: gh<_i299.NotificationRepository>(),
      filterArticlesByBookmarksUseCase:
          gh<_i12.FilterArticlesByBookmarksUseCase>(),
    ),
    instanceName: 'RecommendedInteractor',
  );
  gh.factory<_i550.HomeSectionsBloc>(() => _i550.HomeSectionsBloc(
        gh<_i980.SectionsInteractor>(),
        gh<_i17.SubscriptionManager<List<_i183.SectionModel>>>(
            instanceName: 'HomeSectionsBlocSubscriptionManager'),
      ));
  gh.factory<_i1000.HomeArticlesBloc>(() => _i1000.HomeArticlesBloc(
        gh<_i250.HomeArticlesInteractor>(),
        gh<_i980.SectionsInteractor>(),
        gh<_i675.FilterArticlesBySearchUseCase>(),
        gh<_i37.SubscriptionManager<List<_i717.ArticleModel>>>(),
      ));
  gh.factory<_i923.SectionsBloc>(() => _i923.SectionsBloc(
        gh<_i980.SectionsInteractor>(),
        gh<_i17.SubscriptionManager<List<_i717.SectionModel>>>(
            instanceName: 'RecommendedBlocSubscriptionManager'),
      ));
  gh.factory<_i656.RecommendedBloc>(() => _i656.RecommendedBloc(
        recommendedInteractor: gh<_i670.RecommendedInteractor>(
            instanceName: 'RecommendedInteractor'),
        bookmarksInteractor: gh<_i68.BookmarksInteractor>(),
        subscriptionManager:
            gh<_i17.SubscriptionManager<List<_i717.ArticleModel>>>(
                instanceName: 'RecommendedBlocSubscriptionManager'),
      ));
  gh.singleton<_i591.NavigationBloc>(
      () => _i591.NavigationBloc(gh<_i965.NavigationService>()));
  return getIt;
}

class _$ConfigModule extends _i602.ConfigModule {}

class _$FirebaseModule extends _i645.FirebaseModule {}

class _$AuthModule extends _i698.AuthModule {}

class _$FirebaseMessagingModule extends _i272.FirebaseMessagingModule {}

class _$PermissionsModule extends _i247.PermissionsModule {}

class _$InfrastructureModule extends _i407.InfrastructureModule {}

class _$AppLifecycleServiceModule extends _i765.AppLifecycleServiceModule {}

class _$DioClientModule extends _i635.DioClientModule {}

class _$RouterModule extends _i1029.RouterModule {}

class _$DbModule extends _i624.DbModule {}
