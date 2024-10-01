import 'package:flutter/material.dart';
import 'package:nuntium/core/ui/ui_loader/ui_loader.dart';
import 'package:nuntium/features/splash/presentation/bloc/splash_bloc_models.dart';

class SplashContent extends StatelessWidget {
  final SplashStateData state;

  const SplashContent({
    required this.state,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: UILoader(
        showBackground: false,
      ),
    );
  }
}
