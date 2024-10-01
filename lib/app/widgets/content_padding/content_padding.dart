import 'package:flutter/widgets.dart';

class ContentPadding extends StatelessWidget {
  final Widget child;

  const ContentPadding({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: child,
    );
  }
}
