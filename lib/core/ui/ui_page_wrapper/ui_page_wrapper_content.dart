import 'package:flutter/material.dart';

class UIPageWrapperContent extends StatelessWidget {
  final Widget child;

  const UIPageWrapperContent({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: child,
    );
  }
}
