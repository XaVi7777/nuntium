import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/domain/interactors/auth/auth_interactor.dart';
import 'package:nuntium/features/profile/domain/user/user_interactor.dart';
import 'package:nuntium/features/profile/presentation/bloc/profile_bloc_models.dart';

@injectable
class ProfileBloc extends SrBloc<ProfileEvent, ProfileState, ProfileSR> {
  final UserInteractor _userInteractor;
  final AuthInteractor _authInteractor;
  final SubscriptionManager<UserModel> _subscriptionManager;

  ProfileBloc(
    this._userInteractor,
    this._authInteractor,
    this._subscriptionManager,
  ) : super(const ProfileState.empty()) {
    on<ProfileEventInit>(_onInit);
    on<ProfileEventUpdateUser>(_onUpdateUser);
    on<ProfileEventSignOut>(_onSignOut);
  }

  @override
  Future<void> close() {
    _unsubscribeToUserStream();
    return super.close();
  }

  FutureOr<void> _onInit(
    ProfileEventInit event,
    Emitter<ProfileState> emit,
  ) {
    _subscribeToUserStream();
  }

  FutureOr<void> _onUpdateUser(
    ProfileEventUpdateUser event,
    Emitter<ProfileState> emit,
  ) {
    final user = event.user;
    state.maybeMap(
      data: (stateData) {
        emit(stateData.copyWith(user: user));
      },
      orElse: () {
        emit(ProfileState.data(user: user));
      },
    );
  }

  FutureOr<void> _onSignOut(
    _,
    __,
  ) async {
    addSr(const ProfileSR.showLoader());
    await _authInteractor.signOut();
    addSr(const ProfileSR.hideLoader());
  }

  void _subscribeToUserStream() {
    _subscriptionManager.subscribe(_userInteractor.userStream, _onReceiveUser);
  }

  void _onReceiveUser(UserModel user) => add(ProfileEvent.updateUser(user));

  void _unsubscribeToUserStream() {
    _subscriptionManager.unsubscribe();
  }
}
