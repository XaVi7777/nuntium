abstract class PermissionsLocalDataSource {
  Future<bool> getPermissionHasBeenRequested();
  Future<void> setPermissionHasBeenRequested(bool value);
}
