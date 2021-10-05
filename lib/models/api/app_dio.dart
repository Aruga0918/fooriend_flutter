import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fooriend/models/config/config.dart';

class AppDio with DioMixin implements Dio {
  static AppDio instantiate(String baseURL) => AppDio._(baseURL);
  static AppDio defaults() => AppDio._(Config.baseURL);

  AppDio._(String baseURL, [BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: baseURL,
      headers: {},
      //queryParameters: {}.
    );
    this.options = options;
    httpClientAdapter = DefaultHttpClientAdapter();

  }
}