import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/models/entities/token.dart';
import 'package:fooriend/models/stores/user_store.dart';

class RefreshRepository {
  final Dio dio;
  final UserStore userStore;
  const RefreshRepository({
    required this.dio,
    required this.userStore
  });


  Future<void> refresh() async{
    final Token beforeToken = Token.fromJson(userStore.tokenData.value);
    final response = await dio.post(
        '/auth/refresh', options: new Options(
      contentType: 'application/json',
      headers: { HttpHeaders.authorizationHeader: 'Bearer ${beforeToken.refreshToken}'}
    ));
    userStore.refreshToken(accessToken: response.data.access_token, beforeToken: beforeToken);
  }
}