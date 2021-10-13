import 'dart:convert';
import 'package:fooriend/utils/mock_constant.dart';

class Token {
  final String accessToken;
  final String refreshToken;

  Token({
    required this.accessToken,
    required this.refreshToken
  });


  static Token fromJson(data) {
    final user = Token(
      accessToken: data["access_token"],
      refreshToken: data["refresh_token"]
    );
    return user;
  }

  static String toJson({required Token token}) {
    return json.encode({
      "access_token": token.accessToken,
      "refresh_token": token.refreshToken
    });
  }

  static void toStore({required Token token}) {

  }
}
