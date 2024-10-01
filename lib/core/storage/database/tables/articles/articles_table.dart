import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:nuntium/data/models/media/media_model.dart';

class ArticlesTable extends Table {
  TextColumn get uuid => text()();
  TextColumn get section => text()();
  TextColumn get subsection => text().nullable()();
  TextColumn get title => text()();
  TextColumn get abstract => text()();
  TextColumn get url => text()();
  TextColumn get uri => text()();
  TextColumn get byline => text().nullable()();
  TextColumn get desFacet =>
      text().map(const StringListConverter()).nullable()();
  TextColumn get orgFacet =>
      text().map(const StringListConverter()).nullable()();
  TextColumn get perFacet =>
      text().map(const StringListConverter()).nullable()();
  TextColumn get geoFacet =>
      text().map(const StringListConverter()).nullable()();
  TextColumn get media => text().map(const MediaListConverter()).nullable()();

  @override
  Set<Column> get primaryKey => {uuid};

  @override
  List<String> get customConstraints => ['UNIQUE(uuid)'];
}

class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();

  @override
  List<String> fromSql(String fromDb) {
    return fromDb.split(',');
  }

  @override
  String toSql(List<String> value) {
    return value.join(',');
  }
}

class MediaListConverter extends TypeConverter<List<MediaModel>, String> {
  const MediaListConverter();

  @override
  List<MediaModel> fromSql(String fromDb) {
    final jsonData = json.decode(fromDb) as List<dynamic>;
    return jsonData
        .map((item) => MediaModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  String toSql(List<MediaModel> value) {
    return json.encode(value.map((item) => item.toJson()).toList());
  }
}
