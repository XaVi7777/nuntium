import 'package:drift/drift.dart';
// ignore: deprecated_member_use
import 'package:drift/web.dart';

QueryExecutor createQueryExecutor({
  bool logStatements = false,
}) {
  final webDatabase = WebDatabase('db', logStatements: logStatements);
  return webDatabase;
}
