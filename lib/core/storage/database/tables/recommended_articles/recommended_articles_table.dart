import 'package:drift/drift.dart';
// ignore: unused_import
import 'package:nuntium/core/storage/database/tables/articles/articles_table.dart';

class RecommendedArticlesTable extends Table {
  TextColumn get articleUuid =>
      text().customConstraint('REFERENCES articles_table(uuid) NOT NULL')();
  DateTimeColumn get dateAdded => dateTime().withDefault(currentDateAndTime)();
  IntColumn get period => integer()();

  @override
  Set<Column> get primaryKey => {articleUuid, period};
}
