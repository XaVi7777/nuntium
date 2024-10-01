import 'package:drift/drift.dart';
import 'package:flutter/widgets.dart' hide Table;
import 'package:nuntium/arch/drfit/drift_migrator.dart';
import 'package:nuntium/core/storage/database/daos/export.dart';
import 'package:nuntium/core/storage/database/tables/export.dart';
// ignore: unused_import
import 'package:nuntium/data/models/export.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    ArticlesTable,
    SectionsTable,
    HomeArticlesTable,
    RecommendedArticlesTable,
    BookmarkedArticlesTable,
  ],
  daos: [
    ArticlesDao,
    SectionsDao,
    HomeArticlesDao,
    RecommendedArticlesDao,
    BookmarkedArticlesDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  @protected
  final DriftMigrator<AppDatabase> migrator;

  @override
  MigrationStrategy get migration => migrator.delegateStrategy(this);

  @override
  int get schemaVersion => migrator.schemaVersion;

  AppDatabase({
    required QueryExecutor queryExecutor,
    required this.migrator,
  }) : super(queryExecutor);
}
