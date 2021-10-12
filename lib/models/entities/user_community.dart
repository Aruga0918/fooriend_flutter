import 'dart:convert';
import 'package:fooriend/utils/mock_constant.dart';

class UserCommunity {
  final int id;
  final String name;
  final int memberCnt;
  final String iconUrl = MockConstant.ACommunityImage;

  UserCommunity({
    required this.id,
    required this.name,
    // required this.iconUrl,
    required this.memberCnt
  });

  static final public = UserCommunity(id: 0, name: "public", memberCnt: 10000000);

  static UserCommunity fromJson(data) {
    // final data = json.decode(jsonData);
    final userCommunity = UserCommunity(
      id: data["id"],
      name: data["name"],
      // iconUrl: data["icon_url"],
      memberCnt: data["member_cnt"],
    );
    return userCommunity;
  }

  static String toJson({required UserCommunity userCommunity}) {
    return json.encode({
      "id": userCommunity.id.toString(),
      "name": userCommunity.name,
      // "icon_url": userCommunity.iconUrl,
      "member_cnt": userCommunity.memberCnt
    });
  }
}
//[
//     {
//         "id" : コミュニティのid
//         "name" : コミュニティの名前,
//         "icon_url" : アイコンのURL,
//         "member_cnt" : メンバーの数,
//     }
//     ...
// ]