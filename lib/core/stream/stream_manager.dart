abstract class StreamManager<T> {
  bool get isClosed;
  T? get valueOrNull;
  Stream<T> getStream();
  void add(T event);
  void initialize();
  void dispose();
}
