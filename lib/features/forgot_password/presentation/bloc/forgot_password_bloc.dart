import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc.dart';
import 'package:nuntium/features/forgot_password/presentation/bloc/forgot_password_bloc_models.dart';

@injectable
class ForgotPasswordBloc extends SrBloc<ForgotPasswordEvent, ForgotPasswordState, ForgotPasswordSR> {

  ForgotPasswordBloc() : super(const ForgotPasswordState.empty()) {
    on<ForgotPasswordEventInit>(_init);
  }

  FutureOr<void> _init(
    ForgotPasswordEventInit event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(const ForgotPasswordState.data());
  }

 
}
