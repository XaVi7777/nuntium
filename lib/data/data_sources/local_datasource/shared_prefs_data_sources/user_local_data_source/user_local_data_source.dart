
abstract class UserLocalDataSource {
  Future<Map<String, dynamic>?> getUser();
  Future<void> saveUser(Map<String, dynamic> userData);
  Future<void> deleteUser();
}
