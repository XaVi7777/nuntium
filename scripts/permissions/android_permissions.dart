class AndroidPermissions {
  static String get internet => 'android.permission.INTERNET';
  static String get postNotifications =>
      'android.permission.POST_NOTIFICATIONS';

  static List<String> get appPermissions => [
        internet,
        postNotifications,
      ];
}
