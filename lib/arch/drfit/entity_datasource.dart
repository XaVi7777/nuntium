import 'package:dartz/dartz.dart';
import 'package:nuntium/arch/drfit/local_datasource.dart';
import 'package:nuntium/core/models/failure/failure.dart';

abstract class EntityDataSource<K, V> extends LocalDataSource {
  Future<List<V>> get(K key);
  Future<Either<Failure, Unit>> save(K key, List<V> items);
  Future<Either<Failure, Unit>> delete(K key);
}
