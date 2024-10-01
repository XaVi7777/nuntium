import 'package:flutter/material.dart';

class UIChip extends StatelessWidget {
  final Widget label;
  final bool isSelected;
  final bool showCheckMark;
  final TextStyle? labelStyle;
  final void Function(bool)? onSelected;

  const UIChip({
    required this.label,
    this.isSelected = false,
    this.showCheckMark = false,
    this.labelStyle,
    this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      
      label: label,
      selected: isSelected,
      showCheckmark: showCheckMark,
      labelStyle: labelStyle,
      onSelected: onSelected,
      
    );
  }
}
