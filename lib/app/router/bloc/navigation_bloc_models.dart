import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_bloc_models.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  const NavigationState._();

  const factory NavigationState.empty() = _Empty;
}

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.push(
    PageRouteInfo route, {
    void Function(NavigationFailure)? onFailure,
  }) = NavigationEventPush;

  const factory NavigationEvent.pop({
    Object? result,
  }) = NavigationEventPop;

  const factory NavigationEvent.replaceWith(
    PageRouteInfo route, {
    void Function(NavigationFailure)? onFailure,
  }) = NavigationEventReplaceWith;

  const factory NavigationEvent.replaceAllWith(
    List<PageRouteInfo> routes, {
    void Function(NavigationFailure)? onFailure,
    @Default(true) bool updateExistingRoutes,
  }) = NavigationEventReplaceAllWith;
}
