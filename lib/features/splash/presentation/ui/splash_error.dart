import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/error_with_retry/error_with_retry.dart';
import 'package:nuntium/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:nuntium/features/splash/presentation/bloc/splash_bloc_models.dart';

class SplashError extends StatelessWidget {
  const SplashError({super.key});

  @override
  Widget build(BuildContext context) {
    return ErrorWithRetry(
      onRetry: () => _onRetry(context),
    );
  }

  void _onRetry(BuildContext context) {
    context.read<SplashBloc>().add(const SplashEvent.init());
  }
}
