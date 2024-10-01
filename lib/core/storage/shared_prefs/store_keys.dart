import 'package:nuntium/arch/key_value_store/key_value_store.dart';

class StoreKeys {
  static final prefsVersionKey = TypeStoreKey<int>('prefs_version_key');
  static final user = TypeStoreKey<String>('user');
  static final permissionsHasBeenRequested =
      TypeStoreKey<bool>('permissionsHasBeenRequested');
}
