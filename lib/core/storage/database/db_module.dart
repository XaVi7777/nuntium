import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/drfit/drift_migrator.dart';
import 'package:nuntium/core/storage/database/app_database.dart';
import 'package:nuntium/core/storage/database/db_query_executor/shared.dart';
import 'package:nuntium/core/storage/migration_observer_logger/migration_observer_logger.dart';

@module
abstract class DbModule {
  @lazySingleton
  AppDatabase appDatabase({
    required MigrationObserverLogger observer,
  }) {
    return AppDatabase(
      queryExecutor: createQueryExecutor(),
      migrator: DriftMigrator<AppDatabase>(
        migrationLogics: {},
        schemaVersion: 1,
        observer: observer,
      ),
    );
  }
}
