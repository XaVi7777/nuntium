typedef ParseJsonApiError<DE> = Future<DE?> Function(Map<String, dynamic>?);
typedef MakeRequest<T> = Future<T> Function();

abstract class DioRequestWrapper {
  Future<T> processRequest<T>(
    MakeRequest<T> makeRequest,
  );
}
