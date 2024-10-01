import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/key_value_store/key_value_store.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/startup/startup_repository.dart';

@Singleton(as: StartupRepository)
class StartupRepositoryImpl implements StartupRepository {
  bool _keyValueStoreInited = false;

  final KeyValueStore _keyValueStore;

  StartupRepositoryImpl(
    this._keyValueStore,
  );

  @override
  bool isInited() => _keyValueStoreInited;

  @override
  Future<Either<Failure, Unit>> init() async {
    if (isInited()) {
      return right(unit);
    }
    try {
      await _keyValueStore.init();
      _keyValueStoreInited = true;
      return right(unit);
    } on Exception catch (e) {
      return left(Failure.keyValueStoreFailure(e.toString()));
    }
  }
}
