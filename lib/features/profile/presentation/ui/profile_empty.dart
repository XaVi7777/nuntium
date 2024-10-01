import 'package:flutter/material.dart';
import 'package:nuntium/core/ui/ui.dart';

class ProfileEmpty extends StatelessWidget {
  const ProfileEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: UILoader(),);
  }
}
