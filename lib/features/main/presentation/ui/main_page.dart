import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/features/main/presentation/bloc/main_bloc.dart';
import 'package:nuntium/features/main/presentation/bloc/main_bloc_models.dart';
import 'package:nuntium/features/main/presentation/ui/main_content.dart';
import 'package:nuntium/features/main/presentation/ui/main_empty.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (context) => BlocUtils.create<MainBloc, MainEvent>(
        context,
        event: const MainEvent.init(),
      ),
      child: BlocBuilder<MainBloc, MainState>(
        builder: _blocBuilder,
      ),
    );
  }

  Widget _blocBuilder(BuildContext context, MainState blocState) =>
      blocState.map(
        data: (state) => MainContent(state: state),
        empty: (_) => const MainEmpty(),
      );
}
