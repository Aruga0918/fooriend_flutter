import 'dart:convert';
import 'package:fooriend/utils/mock_constant.dart';

class Community {
  final int id;
  final String name;
  final String commIconUrl;
  final int hostUser;
  final String description;
  final List<dynamic> members;

  Community({
    required this.id,
    required this.members,
    required this.name,
    required this.commIconUrl,
    required this.hostUser,
    required this.description,
  });

  static final mockCommunities = [
    Community(
      id: 0,
      members: [
        {
            "name":"hoge",
            "id": 1,
            "uid" : "hoge1",
            "icon_url" : "",
            "is_join" : true
        },
      ],
      name: "bird",
      commIconUrl: MockConstant.ACommunityImage,
      hostUser: 0,
      description: "モック1"
    ),
    Community(
        id: 0,
        members:  [
          {
            "name":"hoge",
            "id": 1,
            "uid" : "hoge1",
            "icon_url" : "",
            "is_join" : true
          },
        ],
        name: "紅葉",
        commIconUrl: MockConstant.BCommunityImage,
        hostUser: 0,
        description: "モック2"
    ),
    Community(
        id: 0,
        members:  [
          {
            "name":"hoge",
            "id": 1,
            "uid" : "hoge1",
            "icon_url" : "",
            "is_join" : true
          },
        ],
        name: "ますかっと",
        commIconUrl: MockConstant.CCommunityImage,
        hostUser: 0,
        description: "モック3"
    ),
  ];

  static Community fromJson(data) {
    final community = Community(
      id: int.parse(data["id"]),
      members: data["members"],
      name: data["name"],
      commIconUrl: data["comm_icon_url"],
      hostUser: int.parse(data["host_user"]),
      description: data["description"],
    );
    return community;
  }

  static String toJson({required Community community}) {
    return json.encode({
      "id": community.id.toString(),
      "members": community.members,
      "name": community.name,
      "comm_icon_url": community.commIconUrl,
      "host_user": community.hostUser.toString(),
      "description": community.description
    });
  }
}

//NOTE
//"id" : コミュニティid,
//     "members" : [
//         {
//             "name":名前,
//             "id", ユーザーid（unsigned int）
//             "uid" : ユーザーid（文字列）,
//             "icon_url" : アイコンのurl,
//             "is_join" : 参加してるのかboolean
//         },
//         ...
//     ],
//     "name" : コミュニティの名前，
//     "comm_icon_url" : コミュニティアイコンのurl,
//     "description" : コミュニティの説明,
//     "host_user" : hostのuser id(unsigned int)