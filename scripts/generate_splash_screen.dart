// ignore_for_file: avoid_print

import 'dart:io';

Future<void> generateSplashScreen() async {
  try {
    final result = await Process.run(
      'dart',
      ['run', 'flutter_native_splash:create'],
    );

    if (result.exitCode == 0) {
      print('Splash screen generated successfully.');
    } else {
      print('Error generating splash screen: ${result.stderr}');
    }
  } on Exception catch (e) {
    print('Failed to generate splash screen: $e');
  }
}
