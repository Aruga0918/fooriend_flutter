import 'dart:convert';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/utils/mock_constant.dart';

class Token {
  final String accessToken;
  final String refreshToken;
  final String name;
  final String uid;
  final int userId;

  Token({
    required this.accessToken,
    required this.refreshToken,
    required this.name,
    required this.uid,
    required this.userId,
  });


  static Token fromJson(data) {
    // final data = json.decode(jsonData);
    final user = Token(
      accessToken: data["access_token"],
      refreshToken: data["refresh_token"],
      name: data["username"],
      uid: data["uid"],
      userId: data["id"],
    );
    print('this user_id is ${user.userId}');
    return user;
  }

  static String toJson({required Token token}) {
    return json.encode({
      "access_token": token.accessToken,
      "refresh_token": token.refreshToken,
      "username": token.name,
      "uid": token.uid,
      "id": token.userId,

    });
  }

  static Token refresh({required String accessToken, required Token beforeToken}) {
    final newToken = Token(
        accessToken: accessToken,
        refreshToken: beforeToken.refreshToken,
        name: beforeToken.name,
        uid: beforeToken.uid,
        userId: beforeToken.userId
    );
    return newToken;
  }

}
