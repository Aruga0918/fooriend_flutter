import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fooriend/models/entities/token.dart';

class SignRepository {
  final Dio dio;

  const SignRepository({required this.dio});

  Future<Token> signUp({required String userName, required String uid, required String password}) async{
    final response = await dio.post(
        '/auth/signup', data: {
      'username': userName,
      'uid': uid,
      'password': password,
    });
    final token = Token.fromJson(response.data);
    return token;
  }

  Future<Token> signing({required String uid, required String password}) async{
    final response = await dio.post(
        '/auth/signin', data: {
      "uid": uid,
      "password": password,
    });
    final token = Token.fromJson(response.data);
    return token;
  }
}