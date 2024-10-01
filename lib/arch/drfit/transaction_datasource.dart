import 'package:nuntium/arch/drfit/local_datasource.dart';

abstract class TransactionDataSource<V> extends LocalDataSource {
  Future<List<V>> getAll();
  Future<void> add(V item);
  Future<void> remove(V item);
  Future<void> clear();
}
