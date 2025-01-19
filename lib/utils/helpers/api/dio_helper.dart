import 'dart:developer';

import 'package:dio/dio.dart';
import 'api_constants.dart';

class DioHelper {
  static Dio? dio;

  static init() async {
    String baseUrl = ApiConstants.baseUrl;

    dio = Dio(
      BaseOptions(
        followRedirects: false,
        validateStatus: (status) => true,
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Accept': 'application/json',
        },
      ),
    );
  }

  static Future<Response?> getData(
      {required String url,
      Map<String, dynamic>? query,
      String? bearerToken,
      Options? options,
      bool getBytes = false}) async {
    log(url, name: "Dio Get Request");
    dio?.options.headers = {
      if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
    };
    return await dio?.get(url, queryParameters: query, options: options);
  }

  static Future<Response?> download({
    required String url,
    required String path,
    String? bearerToken,
    Map<String, dynamic>? query,
  }) async {
    log(url, name: "Dio Download Request");

    dio?.options.headers = {
      if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
    };
    return await dio?.download(
      url,
      path,
      queryParameters: query,
    );
  }

  static Future<Response?> postData({
    required String url,
    Map<String, dynamic>? query,
    dynamic data,
    String? bearerToken,
  }) async {
    log(url, name: "Dio Post Request");
    dio?.options.headers = {
      if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
    };
    return await dio?.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response?> patchData({
    required String url,
    Map<String, dynamic>? query,
    dynamic data,
    String? bearerToken,
  }) async {
    log(url, name: "Dio Patch Request");
    dio?.options.headers = {
      if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
    };
    return await dio?.patch(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response?> deleteData({
    required String url,
    Map<String, dynamic>? query,
    dynamic data,
    String? bearerToken,
  }) async {
    log(url, name: "Dio Delete Request");
    dio?.options.headers = {
      if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
    };
    return await dio?.delete(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response?> putData({
    required String url,
    Map<String, dynamic>? query,
    dynamic data,
    String? bearerToken,
  }) async {
    log(url, name: "Dio Put Request");
    dio?.options.headers = {
      if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
    };
    return await dio?.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
