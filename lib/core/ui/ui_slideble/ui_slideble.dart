import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

export 'package:flutter_slidable/flutter_slidable.dart';

class UISlidable extends StatelessWidget {
  final Widget child;
  final ActionPane? startActionPane;
  final ActionPane? endActionPane;

  const UISlidable({
    required this.child,
    this.startActionPane,
    this.endActionPane,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: child,
      startActionPane: startActionPane,
      endActionPane: endActionPane,
    );
  }
}
