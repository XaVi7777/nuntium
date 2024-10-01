import 'package:nuntium/core/http/server_request.dart';

abstract class RemoteDataSource<
    K extends ServerRequest<dynamic, dynamic, dynamic>, V> {
  Future<V> get(K request);
}
