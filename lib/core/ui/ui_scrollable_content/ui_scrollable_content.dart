import 'package:flutter/widgets.dart';

class UIScrollableContent extends StatelessWidget {
  final Widget child;

  const UIScrollableContent({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: child,
        ),
      ],
    );
  }
}
