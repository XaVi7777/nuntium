import 'package:auto_route/auto_route.dart';

abstract class NavigationService {
  Future<T?> push<T extends Object?>(
    PageRouteInfo route, {
    void Function(NavigationFailure)? onFailure,
  });

  Future<T?> replace<T extends Object?>(
    PageRouteInfo route, {
    void Function(NavigationFailure)? onFailure,
  });

  Future<void> replaceAll(
    List<PageRouteInfo> routes, {
    void Function(NavigationFailure)? onFailure,
    bool updateExistingRoutes = true,
  });

  Future<bool> pop<T extends Object?>([T? result]);
}
