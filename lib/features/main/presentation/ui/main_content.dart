import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/features/main/presentation/bloc/main_bloc.dart';
import 'package:nuntium/features/main/presentation/bloc/main_bloc_models.dart';
import 'package:nuntium/generated/assets.gen.dart';

class MainContent extends StatelessWidget {
  final MainStateData state;

  const MainContent({
    required this.state,
    super.key,
  });
  List<String> get _itemsIconsPaths => [
        Assets.svgCompiled.home,
        Assets.svgCompiled.tags,
        Assets.svgCompiled.bookmark,
        Assets.svgCompiled.user,
      ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      builder: (context, child) {
        final activeIndex = state.activeIndex;
        final tabsRouter = AutoTabsRouter.of(context);
        if (tabsRouter.activeIndex != activeIndex) {
          Future.microtask(() => tabsRouter.setActiveIndex(activeIndex));
        }
        return Scaffold(
          body: child,
          bottomNavigationBar: UIBottomNavigationBar(
            currentIndex: activeIndex,
            items: List.generate(
              _itemsIconsPaths.length,
              (index) => _itemsGenerator(
                context,
                index,
              ),
            ),
          ),
        );
      },
    );
  }

  UIBottomNavigationBarItem _itemsGenerator(
    BuildContext context,
    int index,
  ) {
    final isSelected = index == state.activeIndex;
    final iconPath = _itemsIconsPaths[index];
    return UIBottomNavigationBarItem(
      isSelected: isSelected,
      iconPath: iconPath,
      onTap:
          isSelected ? null : () => _onTapBottomNavigationBar(context, index),
    );
  }

  void _onTapBottomNavigationBar(BuildContext context, int index) =>
      context.read<MainBloc>().add(MainEvent.updateMainIndex(index));
}
