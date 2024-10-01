import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/key_value_store/key_value_store.dart';
import 'package:nuntium/core/storage/shared_prefs/store_keys.dart';
import 'package:nuntium/data/data_sources/local_datasource/shared_prefs_data_sources/permissions_local_data_source/permissions_local_data_source.dart';

@LazySingleton(as: PermissionsLocalDataSource)
class PermissionsLocalDataSourceImpl implements PermissionsLocalDataSource {
  final KeyValueStore _keyValueStore;

  PermissionsLocalDataSourceImpl(this._keyValueStore);

  @override
  Future<bool> getPermissionHasBeenRequested() async {
    final value =
        await _keyValueStore.read<bool>(StoreKeys.permissionsHasBeenRequested);
    return value ?? false;
  }

  @override
  Future<void> setPermissionHasBeenRequested(bool value) async {
    await _keyValueStore.write(StoreKeys.permissionsHasBeenRequested, value);
  }
}
