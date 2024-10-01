import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/storage/database/app_database.dart';
import 'package:nuntium/core/storage/database/tables/sections_table/sections_table.dart';

part 'sections_dao.g.dart';

@DriftAccessor(tables: [SectionsTable])
@lazySingleton
class SectionsDao extends DatabaseAccessor<AppDatabase>
    with _$SectionsDaoMixin {
  final AppDatabase db;

  SectionsDao(this.db) : super(db);

  Future<List<SectionsTableData>> getAllSections() =>
      select(sectionsTable).get();

  Future<void> updateSection(SectionsTableCompanion section) =>
      update(sectionsTable).replace(section);

  Future<void> setSelected(String type, bool isSelected) {
    return (update(sectionsTable)..where((tbl) => tbl.type.equals(type)))
        .write(SectionsTableCompanion(isSelected: Value(isSelected)));
  }

  Future<void> updateAllSections(List<SectionsTableCompanion> sections) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(sectionsTable, sections);
    });
  }
}
