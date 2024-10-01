import 'package:flutter/widgets.dart';
import 'package:nuntium/app/widgets/content_padding/content_padding.dart';
import 'package:nuntium/app/widgets/empty_list/empty_list.dart';
import 'package:nuntium/features/recommended/presentation/bloc/recommended/recommended_bloc_models.dart';
import 'package:nuntium/features/recommended/presentation/ui/recommended_list.dart';


class RecommendedContent extends StatelessWidget {
  final RecommendedStateData state;

  const RecommendedContent({
    required this.state,
    super.key,
  });

  bool get _isEmpty => state.recommended.isEmpty;

  @override
  Widget build(BuildContext context) {
    if (_isEmpty) return const EmptyList();
    return ContentPadding(child: RecommendedList(recommended: state.recommended));
  }
}
