import 'dart:async';

import 'package:nuntium/core/stream/subscription_manager.dart';
import 'package:rxdart/rxdart.dart';

class SubscriptionManagerImpl<T> implements SubscriptionManager<T> {
  StreamSubscription<dynamic>? _subscription;

  @override
  void subscribe(
    Stream<T> stream,
    void Function(T event) onData, {
    void Function(Object error)? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    unsubscribe();
    _subscription = stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  @override
  void subscribeToCombinedStreams<R>(
    List<Stream<dynamic>> streams,
    R Function(List<dynamic>) combiner,
    void Function(R event) onData, {
    void Function(Object error)? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    unsubscribe();
    _subscription = CombineLatestStream.list(streams).map(combiner).listen(
          onData,
          onError: onError,
          onDone: onDone,
          cancelOnError: cancelOnError,
        );
  }

  @override
  void unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }
}
