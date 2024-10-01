import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/error_with_retry/error_with_retry.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc_models.dart';

class RecommendedError extends StatelessWidget {
  const RecommendedError({super.key});

  @override
  Widget build(BuildContext context) {
    return ErrorWithRetry(onRetry: () => _onRetry(context));
  }

  void _onRetry(BuildContext context) {
    context.read<RecommendedBloc>().add(const RecommendedEvent.init());
  }
}
