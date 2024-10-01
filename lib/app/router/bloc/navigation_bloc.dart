import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc_models.dart';
import 'package:nuntium/app/router/services/navigation_service.dart';

@singleton
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  final NavigationService _navigationService;

  NavigationBloc(
    this._navigationService,
  ) : super(const NavigationState.empty()) {
    on<NavigationEventPop>(_onPop);
    on<NavigationEventPush>(_onPush);
    on<NavigationEventReplaceWith>(_onReplaceWith);
    on<NavigationEventReplaceAllWith>(_onReplaceAllWith);
  }

  FutureOr<void> _onPush(
    NavigationEventPush event,
    _,
  ) {
    _navigationService.push(event.route);
  }

  FutureOr<void> _onReplaceWith(
    NavigationEventReplaceWith event,
    _,
  ) {
    _navigationService.replace(event.route);
  }

  FutureOr<void> _onReplaceAllWith(
      NavigationEventReplaceAllWith event, Emitter<NavigationState> emit) {
    _navigationService.replaceAll(event.routes);
  }

  FutureOr<void> _onPop(
      NavigationEventPop event, Emitter<NavigationState> emit) {
    _navigationService.pop();
  }
}
