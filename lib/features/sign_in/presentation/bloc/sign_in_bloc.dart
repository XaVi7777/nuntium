import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc.dart';
import 'package:nuntium/domain/interactors/auth/auth_interactor.dart';
import 'package:nuntium/features/sign_in/presentation/bloc/sign_in_bloc_models.dart';

@injectable
class SignInBloc extends SrBloc<SignInEvent, SignInState, SignInSR> {
  final AuthInteractor _authInteractor;

  SignInBloc(
    this._authInteractor,
  ) : super(const SignInState.data()) {
    on<SignInEventSignIn>(_onSignIn);
  }

  FutureOr<void> _onSignIn(
    SignInEventSignIn event,
    Emitter<SignInState> emit,
  ) async {
    addSr(const SignInSR.showLoader());
    await _authInteractor.signIn(event.signInMethod, event.formData);
    addSr(const SignInSR.hideLoader());
  }
}
