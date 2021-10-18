import 'dart:convert';
import 'package:fooriend/utils/mock_constant.dart';

class User {
  final String name;
  final String uid;
  final int userId;
  final String iconUrl = MockConstant.BCommunityImage;
  final String profile;

  User({
    required this.name,
    required this.uid,
    required this.userId,
    // required this.iconUrl,
    required this.profile
  });


  static User fromJson(data) {
    final user = User(
        name: data["name"],
        uid: data["uid"],
        userId: data["id"],
        profile: data["profile"]==null ? "" : data["profile"],
    );
    return user;
  }

  static String toJson({required User user}) {
    return json.encode({
      "name": user.name,
      "uid": user.uid,
      "id": user.userId,
      "profile": user.profile
    });
  }

  static void toStore({required User user}) {

  }
}
