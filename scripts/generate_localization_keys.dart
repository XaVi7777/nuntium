// ignore_for_file: avoid_print

import 'dart:io';

void generateLocalizationKeys() {
  final result = Process.runSync(
    'dart',
    [
      'run',
      'easy_localization:generate',
      '--source-dir=assets/translations',
      '-f',
      'keys',
      '-o',
      'translations/locale_keys.g.dart',
    ],
  );

  if (result.exitCode == 0) {
    print('Successfully generated translation keys.');
  } else {
    print('Failed to generate translation keys.');
    print('Standard Output: ${result.stdout}');
    print('Standard Error: ${result.stderr}');
  }
}
