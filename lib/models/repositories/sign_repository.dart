import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fooriend/models/entities/token.dart';

class SignRepository {
  final Dio dio;

  const SignRepository({required this.dio});

  Future<void> signUp({required String userName, required String userId, required String password}) async{
    await dio.post(
        '/auth/signup', queryParameters: {
      "username": userName,
      "user_id": userId,
      "password": password,
    });
  }

  Future<Token> signing({required String userId, required String password}) async{
    final response = await dio.post(
        '/auth/signin', queryParameters: {
      "user_id": userId,
      "password": password,
    });
    final token = Token.fromJson(response);
    return token;
  }
}