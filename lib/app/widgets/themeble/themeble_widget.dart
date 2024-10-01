import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nuntium/app/theme/app_theme_provider_widget.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/app/theme/bloc/app_theme_bloc.dart';

class ThemebleWidget extends StatelessWidget {
  final Widget Function(AppTheme theme) themebleBuilder;

  const ThemebleWidget({
    required this.themebleBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeBloc>(
      create: (_) => GetIt.I.get(),
      child: BlocBuilder<AppThemeBloc, AppTheme>(
        builder: (context, themeState) => AppThemeProvider(
          child: themebleBuilder(themeState),
          theme: themeState,
        ),
      ),
    );
  }
}
