// ignore_for_file: avoid_print

import 'android_permissions_generator.dart';
import 'ios_permissions_generator.dart';

void main() {
  try {
    AndroidPermissionsGenerator.addAndroidPermissionsToManifest();
    IosPermissionsGenerator.addIosPermissionsToPlist();
  } on Exception catch (e) {
    print('Generate permissions error: $e');
  }
}
