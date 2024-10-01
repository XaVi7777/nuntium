import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc.dart';
import 'package:nuntium/features/home/presentation/bloc/home_articles/home_articles_bloc_models.dart';
import 'package:nuntium/features/home/presentation/ui/home_articles/home_articles_mapper.dart';

class HomeArticles extends StatelessWidget {
  const HomeArticles({super.key});

  static const Size _wrapperSize = Size(double.infinity, 256);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: _wrapperSize,
      child: BlocBuilder<HomeArticlesBloc, HomeArticlesState>(
        builder: (_, articlesState) => HomeArticlesMapper(
          articlesState: articlesState,
        ),
      ),
    );
  }
}
