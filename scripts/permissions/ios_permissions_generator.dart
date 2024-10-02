// ignore_for_file: avoid_print

import 'dart:io';

import 'ios_permissions.dart';

class IosPermissionsGenerator {
  static const String _iosPlistPath = 'ios/Runner/Info.plist';
  static const String _plistNotFoundError =
      'Error: Info.plist not found at $_iosPlistPath.';
  static const String _closingDictTagNotFoundError =
      'Error: Closing </dict> tag not found in Info.plist.';
  static const String _plistUpdateSuccess =
      'Updated Info.plist with new permissions.';
  static const String _permissionAddedComment =
      '    <!-- Permissions added by script -->';
  static const String _permissionEndComment =
      '    <!-- End of permissions added by script -->';

  static void addIosPermissionsToPlist() {
    final iosPermissions = IosPermissions.allPermissions;
    final iosPlistFile = File(_iosPlistPath);

    if (!iosPlistFile.existsSync()) {
      print(_plistNotFoundError);
      return;
    }

    var content = iosPlistFile.readAsStringSync();

    content = _removeOldPermissionsAndComments(content);

    final lastDictIndex = content.lastIndexOf('</dict>');
    if (lastDictIndex != -1) {
      content = content.replaceRange(
        lastDictIndex,
        lastDictIndex,
        '$_permissionAddedComment\n${iosPermissions.join('\n')}\n$_permissionEndComment\n',
      );
    } else {
      print(_closingDictTagNotFoundError);
      return;
    }

    iosPlistFile.writeAsStringSync(content);
    print(_plistUpdateSuccess);
  }

  static String _removeOldPermissionsAndComments(String content) {
    final permissionBlockPattern = RegExp(
      '<!-- Permissions added by script -->.*?<!-- End of permissions added by script -->',
      dotAll: true,
    );

    return content.replaceAll(permissionBlockPattern, '');
  }
}
