import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc.dart';
import 'package:nuntium/domain/interactors/auth/auth_interactor.dart';
import 'package:nuntium/features/sign_up/presentation/bloc/sign_up_bloc_models.dart';

@injectable
class SignUpBloc extends SrBloc<SignUpEvent, SignUpState, SignUpSR> {
  final AuthInteractor _authInteractor;

  SignUpBloc(
    this._authInteractor,
  ) : super(const SignUpState.data()) {
    on<SignUpEventSubmit>(_onSubmit);
  }

  FutureOr<void> _onSubmit(
    SignUpEventSubmit event,
    Emitter<SignUpState> emit,
  ) async {
    addSr(const SignUpSR.showLoader());
    // ignore: avoid_print
    print('submit');
    await _authInteractor.signUp(event.signInMethod, event.formData);
    addSr(const SignUpSR.hideLoader());
  }
}
