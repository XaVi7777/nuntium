import 'package:drift/drift.dart';

class SectionsTable extends Table {
  TextColumn get type => text()();
  BoolColumn get isSelected => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {type};
}
