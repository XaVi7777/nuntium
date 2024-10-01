class AndroidPermissions {
  static String get internet => '''
  <uses-permission android:name="android.permission.INTERNET" />
  ''';

  static String get postNotifications => '''
  <uses-permission android:name="android.permission.POST_NOTIFICATIONS" />
  ''';

  static List<String> get appPermissions => [
        internet,
        postNotifications,
      ];
}
