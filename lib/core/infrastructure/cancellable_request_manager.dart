import 'package:async/async.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:nuntium/core/models/failure/failure.dart';

class CancelableRequestManagerFactory {
  CancelableRequestManager<F, T> create<F extends Failure, T>() {
    return CancelableRequestManager<F, T>();
  }
}

class CancelableRequestManager<F extends Failure, T> {
  CancelableOperation<Either<F, T>>? _fetchOperation;
  String? _currentFetchIdentifier;

  Future<Either<F, T>> executeCancelableOperation(
    Future<Either<F, T>> Function(String fetchIdentifier) operation,
  ) async {
    await _fetchOperation?.cancel();

    final fetchIdentifier = UniqueKey().toString();
    _currentFetchIdentifier = fetchIdentifier;

    _fetchOperation = CancelableOperation.fromFuture(
      operation(fetchIdentifier),
    );

    return _fetchOperation!.value;
  }

  bool shouldCancelOperation(String fetchIdentifier) {
    return _currentFetchIdentifier != fetchIdentifier;
  }

  void cancelOperation() {
    _fetchOperation?.cancel();
  }

  void dispose() {
    cancelOperation();
  }
}
