import 'package:flutter/widgets.dart';

class UIListView extends StatelessWidget {
  final List<Widget> children;
  final ScrollPhysics physics;
  final IndexedWidgetBuilder? itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final int? itemCount;
  final Axis scrollDirection;
  final ScrollController? controller;

  const UIListView({
    this.children = const [],
    this.controller,
    this.physics = const BouncingScrollPhysics(),
    this.itemBuilder,
    this.itemCount,
    this.scrollDirection = Axis.vertical,
    this.separatorBuilder,
    super.key,
  });

  const UIListView.builder({
    required IndexedWidgetBuilder this.itemBuilder,
    required int this.itemCount,
    this.physics = const BouncingScrollPhysics(),
    this.scrollDirection = Axis.vertical,
    this.controller,
    super.key,
  })  : children = const [],
        separatorBuilder = null;

  const UIListView.separated({
    required IndexedWidgetBuilder this.itemBuilder,
    required IndexedWidgetBuilder this.separatorBuilder,
    required int this.itemCount,
    this.physics = const BouncingScrollPhysics(),
    this.scrollDirection = Axis.vertical,
    this.controller,
    super.key,
  }) : children = const [];

  @override
  Widget build(BuildContext context) {
    if (itemBuilder != null && itemCount != null) {
      if (separatorBuilder != null) {
        return ListView.separated(
          physics: physics,
          itemBuilder: itemBuilder!,
          separatorBuilder: separatorBuilder!,
          itemCount: itemCount!,
          scrollDirection: scrollDirection,
        );
      } else {
        return ListView.builder(
          physics: physics,
          itemBuilder: itemBuilder!,
          itemCount: itemCount,
          scrollDirection: scrollDirection,
        );
      }
    }

    return ListView(
      physics: physics,
      children: children,
      scrollDirection: scrollDirection,
      controller: controller,
    );
  }
}
