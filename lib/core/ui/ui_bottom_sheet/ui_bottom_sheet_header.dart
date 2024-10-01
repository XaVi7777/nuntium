import 'package:flutter/material.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';

class UiBottomSheetHeader extends StatelessWidget {
  final String text;

  const UiBottomSheetHeader({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 32,
        maxWidth: MediaQuery.of(context).size.width * .8,
      ),
      child: Center(
        child: Text(
          text,
          style: theme.textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
