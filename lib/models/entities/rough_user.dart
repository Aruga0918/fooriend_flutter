import 'dart:convert';
import 'package:fooriend/utils/mock_constant.dart';

class RoughUser {
  final String name;
  final String uid;
  final int userId;
  final String iconUrl = MockConstant.BCommunityImage;
  bool isSelected = false;

  RoughUser({
    required this.name,
    required this.uid,
    required this.userId,
    // required this.iconUrl,
  });


  static RoughUser fromJson(data) {
    final user = RoughUser(
      name: data["name"],
      uid: data["uid"],
      userId: data["id"],
    );
    return user;
  }

  static String toJson({required RoughUser user}) {
    return json.encode({
      "name": user.name,
      "uid": user.uid,
      "id": user.userId,
    });
  }

  static RoughUser select({required RoughUser user}) {
    user.isSelected = true;
    return user;
  }

  static RoughUser unSelect({required RoughUser user}) {
    user.isSelected = false;
    return user;
  }

  static void toStore({required RoughUser user}) {

  }
}
