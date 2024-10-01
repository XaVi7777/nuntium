import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/key_value_store/key_value_store.dart';
import 'package:nuntium/arch/key_value_store/key_value_store_migrator.dart';
import 'package:nuntium/core/storage/migration_observer_logger/migration_observer_logger.dart';
import 'package:nuntium/core/storage/shared_prefs/store_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: KeyValueStore)
class SharedPrefsKeyValueStore implements KeyValueStore {
  late SharedPreferences _sharedPreferences;

  @override
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Future<T?> read<T>(TypeStoreKey<T> typedStoreKey) async {
    final value = _sharedPreferences.get(typedStoreKey.key);
    if (value is T) {
      return value;
    } else if (T == String) {
      return value as T?;
    } else if (T == int) {
      return value as T?;
    } else if (T == double) {
      return value as T?;
    } else if (T == bool) {
      return value as T?;
    } else if (T == List) {
      return value as T?;
    }
    return null;
  }

  @override
  Future<bool> contains(TypeStoreKey<dynamic> typedStoreKey) async =>
      _sharedPreferences.containsKey(typedStoreKey.key);

  @override
  Future<void> write<T>(TypeStoreKey<T> typedStoreKey, T? value) async {
    if (value == null) {
      await _sharedPreferences.remove(typedStoreKey.key);
      return;
    }

    if (value is int) {
      await _sharedPreferences.setInt(typedStoreKey.key, value);
    } else if (value is String) {
      await _sharedPreferences.setString(typedStoreKey.key, value);
    } else if (value is double) {
      await _sharedPreferences.setDouble(typedStoreKey.key, value);
    } else if (value is bool) {
      await _sharedPreferences.setBool(typedStoreKey.key, value);
    } else if (value is List<String>) {
      await _sharedPreferences.setStringList(typedStoreKey.key, value);
    } else {
      throw UnsupportedError('Type not supported');
    }
  }
}

@LazySingleton(as: KeyValueStoreMigrator)
class KeyValueStoreMigratorImpl extends KeyValueStoreMigrator {
  KeyValueStoreMigratorImpl({
    required super.keyValueStore,
    required MigrationObserverLogger super.observer,
  }) : super(
          migrations: {},
          schemaVersion: 1,
          schemaVersionKey: StoreKeys.prefsVersionKey,
        );
}
