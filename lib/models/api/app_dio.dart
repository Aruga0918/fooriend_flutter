import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fooriend/models/config/config.dart';
import 'package:fooriend/models/entities/token.dart';
import 'package:fooriend/models/stores/user_store.dart';

class AppDio with DioMixin implements Dio {
  static AppDio instantiate(String baseURL) => AppDio._(baseURL);
  static AppDio defaults() => AppDio._(Config.baseURL);
  final userStore = UserStore();

  AppDio._(String baseURL, [BaseOptions? options]) {
    options = userStore.isLogin.value
      ?  BaseOptions(
      baseUrl: baseURL,
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer ${Token.fromJson(json.decode(userStore.tokenData.value)).accessToken}'
      },
      //queryParameters: {}.
      )
      : BaseOptions(
      baseUrl: baseURL,
      headers: {},
      //queryParameters: {}.
    );
    this.options = options;
    httpClientAdapter = DefaultHttpClientAdapter();
  }
}