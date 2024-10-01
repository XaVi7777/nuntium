import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/arch/key_value_store/key_value_store.dart';
import 'package:nuntium/arch/migration_observer/migration_observer.dart';

abstract class KeyValueStoreMigrationLogic {
  int get schemeVersion;

  Future<void> migrate();
}

typedef CreateStoreFunc = Future<void> Function(int createdVersion);

class KeyValueStoreMigrator {
  @protected
  final MigrationObserver? observer;

  @protected
  final KeyValueStore keyValueStore;

  @protected
  final Set<KeyValueStoreMigrationLogic> migrations;

  @protected
  final CreateStoreFunc? onCreateFunc;

  @protected
  final int schemaVersion;

  @protected
  final TypeStoreKey<int> schemaVersionKey;

  KeyValueStoreMigrator({
    required this.keyValueStore,
    required this.migrations,
    required this.schemaVersion,
    required this.schemaVersionKey,
    this.observer,
    this.onCreateFunc,
  });

  Future<void> migrate() async {
    final currentVersion = await _readCurrentVersion();

    if (currentVersion == null) {
      
      await onCreate(schemaVersion);
      await _writeNewVersion(schemaVersion);

      return;
    }
    if (currentVersion != schemaVersion) {
      await onUpgrade(currentVersion, schemaVersion);
      await _writeNewVersion(schemaVersion);
    }
  }

  Future<void> onCreate(int createdVersion) async {
    await onCreateFunc?.call(createdVersion);
    await observer?.onCreate(createdVersion);
  }

  Future<void> onUpgrade(int fromVersion, int toVersion) async {
    var prefsVersion = fromVersion;
    while (prefsVersion < toVersion) {
      prefsVersion++;
      final migartionLogic = migrations.firstWhereOrNull(
          (migrator) => migrator.schemeVersion == prefsVersion);
      if (migartionLogic == null) {
        await observer?.onMissedMigration(prefsVersion);
        continue;
      } else {
        await migartionLogic.migrate();
      }
    }

    await observer?.onUpgrade(fromVersion, toVersion);
  }

  Future<int?> _readCurrentVersion() => keyValueStore.read(schemaVersionKey);

  Future<void> _writeNewVersion(int newVersion) =>
      keyValueStore.write(schemaVersionKey, newVersion);
}
