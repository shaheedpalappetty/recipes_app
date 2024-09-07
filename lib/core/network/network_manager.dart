// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:dio/dio.dart';

class NetworkManager {
  static String getBaseUrl() {
    String baseUrl =
        'https://fls8oe8xp7.execute-api.ap-south-1.amazonaws.com/dev/';
    return baseUrl;
  }

  static Dio createDio() {
    String baseURL = getBaseUrl();


    BaseOptions opts = BaseOptions(
      baseUrl: baseURL,
      responseType: ResponseType.json,
      connectTimeout: const Duration(seconds: 30000),
      contentType: "application/json",
      receiveTimeout: const Duration(seconds: 30000),
    );

    return Dio(opts);
  }

  static Dio dio = createDio();

  Future<Response> get(String url) async {
    try {
      Response response = await dio.get(url);
      return response;
    } on DioError {
      rethrow;
    } on TimeoutException {
      rethrow;
    }
  }

  
}
