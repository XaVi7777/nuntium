import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc.dart';
import 'package:nuntium/app/router/bloc/navigation_bloc_models.dart';
import 'package:nuntium/app/widgets/empty_list/empty_list.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/data/models/article/article_model.dart';
import 'package:nuntium/features/home/presentation/ui/home_articles/article_card.dart';

class HomeArticlesList extends StatelessWidget {
  final List<ArticleModel> articles;

  const HomeArticlesList({
    required this.articles,
    super.key,
  });

  static const _wrapperSize = Size(double.infinity, 256);

  static const _sidePadding = SizedBox(width: 20);

  bool get _isEmpty => articles.isEmpty;
  int get _itemCount => articles.length + 2;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: _wrapperSize,
      child: _isEmpty
          ? const EmptyList()
          : UIListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: _itemBuilder,
              separatorBuilder: _separatorBuilder,
              itemCount: _itemCount,
            ),
    );
  }

  Widget _separatorBuilder(BuildContext context, int index) {
    return (index == 0 || index == articles.length + 1)
        ? const SizedBox.shrink()
        : UISpacers.mediumHorizontalSpacing;
  }

  Widget _itemBuilder(BuildContext context, int index) {
    if (index == 0 || index == articles.length + 1) {
      return _sidePadding;
    } else {
      final article = articles[index - 1];
      return UIInkWell(
        key: ValueKey(article.uuid),
        onTap: () => _onTapCard(context, article),
        child: ArticleCard(article: article),
      );
    }
  }

  void _onTapCard(BuildContext context, ArticleModel article) {
    context
        .read<NavigationBloc>()
        .add(NavigationEvent.push(WebViewRoute(url: article.url)));
  }
}
