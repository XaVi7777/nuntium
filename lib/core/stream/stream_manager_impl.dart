import 'package:nuntium/core/stream/stream_manager.dart';
import 'package:rxdart/rxdart.dart';

class StreamManagerImpl<T> implements StreamManager<T> {
  BehaviorSubject<T>? _subject;

  @override
  bool get isClosed => _subject?.isClosed ?? true;

  @override
  T? get valueOrNull => _subject?.valueOrNull;

  @override
  Stream<T> getStream() {
    if (isClosed) {
      initialize();
    }
    return _subject!.stream;
  }

  @override
  void add(T event) {
    if (isClosed) {
      initialize();
    }
    _subject!.add(event);
  }

  @override
  void initialize() {
    _subject ??= BehaviorSubject<T>();
  }

  @override
  void dispose() {
    _subject?.close();
    _subject = null;
  }
}
