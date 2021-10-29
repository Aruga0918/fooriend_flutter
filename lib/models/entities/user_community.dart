import 'dart:convert';
import 'package:fooriend/utils/mock_constant.dart';

class UserCommunity {
  final int id;
  final String name;
  final int memberCnt;
  final String iconUrl;
  final bool isJoin;

  UserCommunity({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.memberCnt,
    required this.isJoin
  });

  static final public = UserCommunity(id: 0, name: "public", memberCnt: 10000000, iconUrl: MockConstant.ACommunityImage, isJoin: true);

  static UserCommunity fromJson(data) {
    // final data = json.decode(jsonData);
    final userCommunity = UserCommunity(
      id: data["id"],
      name: data["name"],
      iconUrl: data["icon_url"] != null ? data["icon_url"] : MockConstant.ACommunityImage,
      memberCnt: data["member_cnt"],
      isJoin: data["is_join"]
    );
    return userCommunity;
  }

  static String toJson({required UserCommunity userCommunity}) {
    return json.encode({
      "id": userCommunity.id,
      "name": userCommunity.name,
      "icon_url": userCommunity.iconUrl,
      "member_cnt": userCommunity.memberCnt,
      "is_join": userCommunity.isJoin
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