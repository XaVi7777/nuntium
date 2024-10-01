import 'package:flutter/widgets.dart';
import 'package:nuntium/core/extensions/list_divide_ext.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';

class UIAppBarTitle extends StatelessWidget {
  final Widget title;
  final String? description;
  final TextStyle? descriptionStyle;
  final Widget? divider;

  const UIAppBarTitle({
    required this.title,
    this.description,
    this.descriptionStyle,
    this.divider,
    super.key,
  });

  static const _defaultDivider = SizedBox(
    height: 8,
  );

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        title,
        Text(
          description ?? '',
          style: descriptionStyle ?? theme.textTheme.descriptionMedium,
        )
      ].divide(divider ?? _defaultDivider),
    );
  }
}
