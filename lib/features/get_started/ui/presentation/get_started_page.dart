import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui_page_wrapper/ui_page_wrapper.dart';
import 'package:nuntium/features/get_started/ui/presentation/get_started_content.dart';

@RoutePage()
class GetStartedPage extends StatelessWidget {
  const GetStartedPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return UIPageWrapper(
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      child: const GetStartedContent(),
    );
  }
}
