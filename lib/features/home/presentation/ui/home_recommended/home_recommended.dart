import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_recommended/home_recommended_bloc_models.dart';
import 'package:nuntium/features/home/presentation/ui/home_recommended/home_recomended_mapper.dart';

class HomeRecommended extends StatelessWidget {
  const HomeRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeRecommendedBloc, HomeRecommendedState>(
      builder: (_, homeRecommendedState) => HomeRecomendedMapper(
        homeRecommendedState: homeRecommendedState,
      ),
    );
  }
}
