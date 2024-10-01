import 'package:collection/collection.dart';
import 'package:drift/drift.dart';
import 'package:flutter/widgets.dart';
import 'package:nuntium/arch/drfit/drift_migration_logic.dart';
import 'package:nuntium/arch/migration_observer/migration_observer.dart';

typedef DriftCreateFunc = Future<void> Function(Migrator m);

class DriftMigrator<Db> {
  @protected
  final Set<DriftMigrationLogic<Db>> migrationLogics;
  @protected
  final DriftCreateFunc onCreateFunc;

  @protected
  final MigrationObserver? observer;

  final int schemaVersion;

  final OnBeforeOpen? beforeOpen;

  DriftMigrator({
    required this.migrationLogics,
    required this.schemaVersion,
    this.observer,
    this.beforeOpen,
    DriftCreateFunc? onCreateFunc,
  }) : onCreateFunc = onCreateFunc ?? _defaultOnCreate;

  MigrationStrategy delegateStrategy(Db db) => MigrationStrategy(
        onCreate: (m) => onCreate(m, db),
        onUpgrade: (m, from, to) => onUpgrade(m, from, to, db),
        beforeOpen: beforeOpen,
      );

  Future<void> onCreate(Migrator m, Db db) async {
    await onCreateFunc(m);
    await observer?.onCreate(schemaVersion);
  }

  Future<void> onUpgrade(Migrator m, int from, int to, Db db) async {
    var version = from;
    while (version < to) {
      version++;
      await _migrate(db, version, m);
    }
    await observer?.onUpgrade(from, to);
  }

  static Future<void> _defaultOnCreate(Migrator m) => m.createAll();

  Future<void> _migrate(Db database, int schemaVersion, Migrator m) async {
    final migrationLogic = migrationLogics.firstWhereOrNull(
        (migrator) => migrator.schemeVersion == schemaVersion);

    if (migrationLogic == null) {
      await observer?.onMissedMigration(schemaVersion);
    } else {
      await migrationLogic.migrate(database, m);
    }
  }
}
