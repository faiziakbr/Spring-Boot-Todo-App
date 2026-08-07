import 'package:dio/dio.dart';
import 'package:flutter_todo/network/dio_endpoints.dart';

class DioClient {
  final Dio _dio;

  DioClient()
      : _dio = Dio(
    BaseOptions(
      baseUrl: APIEndPoints.baseUrl(),
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ),
  ) {
  }

  Dio get dio => _dio;
}