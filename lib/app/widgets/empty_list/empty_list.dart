import 'package:flutter/widgets.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/app/widgets/localized_text/localized_text.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class EmptyList extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const EmptyList({
    this.text = LocaleKeys.empty_list,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTheme.of(context).textTheme;
    return Center(
      child: SizedBox(
        width: 150,
        child: LocalizedText(
          textKey: text,
          style: style ?? textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
