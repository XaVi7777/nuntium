import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/key_value_store/key_value_store.dart';
import 'package:nuntium/core/storage/shared_prefs/store_keys.dart';
import 'package:nuntium/data/data_sources/local_datasource/shared_prefs_data_sources/user_local_data_source/user_local_data_source.dart';

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final KeyValueStore _keyValueStore;

  UserLocalDataSourceImpl(this._keyValueStore);

  @override
  Future<Map<String, dynamic>?> getUser() async {
    final storedUserJson = await _keyValueStore.read<String>(StoreKeys.user);
    if (storedUserJson != null) {
      return json.decode(storedUserJson) as Map<String, dynamic>?;
    }
    return null;
  }

  @override
  Future<void> saveUser(Map<String, dynamic> userData) async {
    final userJson = json.encode(userData);
    await _keyValueStore.write(StoreKeys.user, userJson);
  }

  @override
  Future<void> deleteUser() async {
    await _keyValueStore.write<String>(StoreKeys.user, null);
  }
}
