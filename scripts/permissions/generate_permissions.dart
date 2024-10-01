// ignore_for_file: avoid_print

import 'dart:io';

import 'android_permissions.dart';
import 'ios_permissions.dart';

void main() {
  generateAndroidManifestFragment();
  generateIosInfoPlistFragment();
}

void generateAndroidManifestFragment() {
  const androidManifestPath = 'android/app/src/main/AndroidManifest.xml';
  final androidPermissions = AndroidPermissions.appPermissions;
  final androidManifestFile = File(androidManifestPath);

  if (!androidManifestFile.existsSync()) {
    print('Error: AndroidManifest.xml not found.');
    return;
  }

  var content = androidManifestFile.readAsStringSync();
  var updated = false;

  for (final permission in androidPermissions) {
    if (!content.contains(permission.trim())) {
      content =
          content.replaceFirst('</manifest>', '    $permission\n</manifest>');
      updated = true;
    }
  }

  if (updated) {
    androidManifestFile.writeAsStringSync(content);
    print('Updated AndroidManifest.xml with new permissions.');
  } else {
    print('All permissions already exist in AndroidManifest.xml.');
  }
}

void generateIosInfoPlistFragment() {
  const iosPlistPath = 'ios/Runner/Info.plist';

  final iosPermissions = IosPermissions.allPermissions;

  final iosPlistFile = File(iosPlistPath);

  if (!iosPlistFile.existsSync()) {
    print('Error: Info.plist not found.');
    return;
  }

  var content = iosPlistFile.readAsStringSync();
  var updated = false;

  for (final permission in iosPermissions) {
    if (!content.contains(permission.trim())) {
      content = content.replaceFirst('</dict>', '    $permission\n</dict>');
      updated = true;
    }
  }

  if (updated) {
    iosPlistFile.writeAsStringSync(content);
    print('Updated Info.plist with new permissions.');
  } else {
    print('All permissions already exist in Info.plist.');
  }
}
