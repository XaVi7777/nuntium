import 'dart:async';
import 'package:flutter/widgets.dart';

class AppLifecycleService with WidgetsBindingObserver {
  final _lifecycleController = StreamController<AppLifecycleState>.broadcast();

  Stream<AppLifecycleState> get lifecycleStream => _lifecycleController.stream;

  void subscribe() {
    WidgetsBinding.instance.addObserver(this);
  }

  void unsubscribe() {
    WidgetsBinding.instance.removeObserver(this);
    _lifecycleController.close();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _lifecycleController.add(state);
  }
}
