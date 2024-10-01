abstract class ServerRequest<P, H, B> {
  final P params;
  final H headers;
  final B body;

  const ServerRequest({
    required this.params,
    required this.headers,
    required this.body,
  });

  String get endpoint;
}
