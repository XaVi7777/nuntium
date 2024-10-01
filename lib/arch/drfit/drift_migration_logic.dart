import 'package:drift/drift.dart';

abstract class DriftMigrationLogic<Db> {
  int get schemeVersion;
  Future<void> migrate(Db database, Migrator m);
}
