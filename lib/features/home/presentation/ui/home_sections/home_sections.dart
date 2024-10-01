import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_sections/home_sections_bloc_models.dart';
import 'package:nuntium/features/home/presentation/ui/home_sections/home_seactions_mapper.dart';

class HomeSections extends StatelessWidget {
  const HomeSections({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSectionsBloc, HomeSectionsState>(
      builder: (_, homeSectionsState) =>
          HomeSeactionsMapper(homeSectionsState: homeSectionsState),
    );
  }
}
