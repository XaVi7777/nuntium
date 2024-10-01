abstract class FirebaseMessagingService {
  Future<bool> hasNotificationPermission();
  Future<void> requestNotificationPermission({
    bool alert = true,
    bool announcement = false,
    bool badge = true,
    bool carPlay = false,
    bool criticalAlert = false,
    bool provisional = false,
    bool sound = true,
  });
  Future<String?> getToken();

  Future<bool> isDenied();
}
