import 'package:flutter/material.dart';

class UISwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const UISwitch({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
    );
  }
}
