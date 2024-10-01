import 'package:auto_route/auto_route.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/router/services/navigation_service.dart';

class NavigationServiceImpl implements NavigationService {
  final AppRouter _appRouter;

  NavigationServiceImpl(this._appRouter);

  @override
  Future<T?> push<T extends Object?>(
    PageRouteInfo route, {
    void Function(NavigationFailure)? onFailure,
  }) =>
      _appRouter.push<T>(
        route,
        onFailure: onFailure,
      );

  @override
  Future<T?> replace<T extends Object?>(
    PageRouteInfo route, {
    void Function(NavigationFailure)? onFailure,
  }) =>
      _appRouter.replace<T>(
        route,
        onFailure: onFailure,
      );

  @override
  Future<void> replaceAll(
    List<PageRouteInfo> routes, {
    void Function(NavigationFailure)? onFailure,
    bool updateExistingRoutes = true,
  }) =>
      _appRouter.replaceAll(
        routes,
        onFailure: onFailure,
        updateExistingRoutes: updateExistingRoutes,
      );

  @override
  Future<bool> pop<T extends Object?>([T? result]) =>
      _appRouter.maybePop<T>(result);
}
