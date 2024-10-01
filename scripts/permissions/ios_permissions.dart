class IosPermissions {
  static String get backgroundModes => '''
  <key>UIBackgroundModes</key>
  <array>
      <string>remote-notification</string>
  </array>
  ''';

  static String get userTrackingUsageDescription => '''
  <key>NSUserTrackingUsageDescription</key>
  <string>We will use your data to provide personalized notifications.</string>
  ''';

  static List<String> get allPermissions => [
        backgroundModes,
        userTrackingUsageDescription,
      ];
}
