import 'package:dio/dio.dart';

abstract class DioClientCreator {
  Future<Dio> makeNyTimesDioClient();
}
