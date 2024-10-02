// ignore_for_file: avoid_print

import 'dart:io';
import 'package:xml/xml.dart';
import 'android_permissions.dart';

class AndroidPermissionsGenerator {
  static const String _androidManifestPath =
      'android/app/src/main/AndroidManifest.xml';
  static const String _startCommentText = ' Permissions added by script ';
  static const String _endCommentText = ' End of permissions added by script ';
  static const String _manifestNotFoundError =
      'Error: AndroidManifest.xml not found at $_androidManifestPath.';
  static const String _incorrectManifestStructureError =
      'Error: Invalid AndroidManifest.xml structure.';
  static const String _applicationTagNotFoundError =
      'Error: <application> tag not found in AndroidManifest.xml.';
  static const String _manifestUpdateSuccess =
      'AndroidManifest.xml successfully updated with new permissions.';

  static void addAndroidPermissionsToManifest() {
    final androidPermissions = AndroidPermissions.appPermissions;
    final androidManifestFile = File(_androidManifestPath);

    if (!androidManifestFile.existsSync()) {
      print(_manifestNotFoundError);
      return;
    }

    var content = androidManifestFile.readAsStringSync();
    content = _removeOldPermissionsAndComments(content);

    final document = XmlDocument.parse(content);
    final manifestElement = document.getElement('manifest');

    if (manifestElement == null) {
      print(_incorrectManifestStructureError);
      return;
    }

    final applicationElement = manifestElement.getElement('application');
    if (applicationElement == null) {
      print(_applicationTagNotFoundError);
      return;
    }

    final applicationIndex =
        manifestElement.children.indexOf(applicationElement);

    final startComment = XmlComment(_startCommentText);
    manifestElement.children.insert(applicationIndex, startComment);

    for (final permission in androidPermissions) {
      final permissionElement = XmlElement(
        XmlName('uses-permission'),
        [XmlAttribute(XmlName('android:name'), permission)],
      );
      manifestElement.children.insert(applicationIndex + 1, permissionElement);
    }

    final endComment = XmlComment(_endCommentText);
    manifestElement.children
        .insert(applicationIndex + 1 + androidPermissions.length, endComment);

    final newContent = document.toXmlString(pretty: true, indent: '    ');
    androidManifestFile.writeAsStringSync(newContent);
    print(_manifestUpdateSuccess);
  }

  static String _removeOldPermissionsAndComments(String content) {
    final permissionBlockPattern = RegExp(
      '<!--$_startCommentText-->.*?<!--$_endCommentText-->',
      dotAll: true,
    );
    return content.replaceAll(permissionBlockPattern, '');
  }
}
