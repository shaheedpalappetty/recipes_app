// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String message;

  ApiException(this.message);

  factory ApiException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ApiException("Connection Timeout Exception");
      case DioErrorType.receiveTimeout:
        return ApiException("Receive Timeout Exception");
      case DioErrorType.badResponse:
        return ApiException("Received Invalid Status Code: ${dioError.response?.statusCode}");
      case DioErrorType.connectionError:
        return ApiException("No Internet Connection");
      default:
        return ApiException("Unexpected Error Occurred");
    }
  }
}
