import 'package:nuntium/arch/drfit/local_datasource.dart';

abstract class ReferenceDataSource<V> extends LocalDataSource {
  Future<List<V>> getAll();
  Future<void> saveAll(List<V> items);
  Future<void> update(V item);
}
