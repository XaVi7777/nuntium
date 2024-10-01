import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/services/connectivity/connectivity_service.dart';

@LazySingleton(as: ConnectivityService)
class ConnectivityServiceImpl implements ConnectivityService {
  final Connectivity _connectivity;

  ConnectivityServiceImpl(this._connectivity);

  @override
  Future<bool> get isConnected async {
    try {
      final connectivityResults = await _connectivity.checkConnectivity();
      if (_isConnectedList(connectivityResults)) {
        return await _checkInternetAccess();
      } else {
        return false;
      }
    } on Exception catch (_) {
      return false;
    }
  }

  bool _isConnectedList(List<ConnectivityResult> results) =>
      results.any(_isConnected);

  bool _isConnected(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.bluetooth:
      case ConnectivityResult.vpn:
      case ConnectivityResult.other:
        return true;
      case ConnectivityResult.none:
      default:
        return false;
    }
  }

  Future<bool> _checkInternetAccess() async {
    try {
      final result = await InternetAddress.lookup('google.com')
          .timeout(const Duration(seconds: 5));
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on Exception catch (_) {
      return false;
    }
  }
}
