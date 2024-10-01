import 'package:flutter/widgets.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc_models.dart';
import 'package:nuntium/features/recommended/presentation/ui/recommended_content.dart';
import 'package:nuntium/features/recommended/presentation/ui/recommended_empty.dart';
import 'package:nuntium/features/recommended/presentation/ui/recommended_error.dart';

class RecommendedStateMapper extends StatelessWidget {
  final RecommendedState recommendedState;

  const RecommendedStateMapper({
    required this.recommendedState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return recommendedState.map(
      data: (state) => RecommendedContent(state: state),
      empty: (_) => const RecommendedEmpty(),
      error: (_) => const RecommendedError(),
    );
  }
}
