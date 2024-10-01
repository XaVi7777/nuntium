abstract class SubscriptionManager<T> {
  void subscribe(
    Stream<T> stream,
    void Function(T event) onData, {
    void Function(Object error)? onError,
    void Function()? onDone,
    bool? cancelOnError,
  });

  void subscribeToCombinedStreams<R>(
    List<Stream<dynamic>> streams,
    R Function(List<dynamic>) combiner,
    void Function(R event) onData, {
    void Function(Object error)? onError,
    void Function()? onDone,
    bool? cancelOnError,
  });

  void unsubscribe();
}
