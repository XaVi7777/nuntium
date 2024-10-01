// ignore_for_file: avoid_print

import 'dart:io';

void main() async {
  const packageName = 'com.example.kidsbi';
  const dbPath = '/data/user/0/$packageName/app_flutter/db.sqlite';
  await runAdbCommand(['shell', 'run-as', packageName, 'rm', dbPath]);
}

Future<void> runAdbCommand(List<String> arguments) async {
  final result = await Process.run('adb', arguments);
  if (result.exitCode == 0) {
    print('Command executed successfully: ${arguments.join(' ')}');
  } else {
    print('Failed to execute command: ${arguments.join(' ')}');
    print('Error: ${result.stderr}');
  }
}
