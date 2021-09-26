import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

//NOTE: ログインユーザーに関与するものは全てアクセストークンによりuserIdを取得する
class CommunityRepository {
  final Dio dio;

  const CommunityRepository({required this.dio});

  Future<String> getCommunity({required int communityId}) async {
    final response = await dio.get('/communities/$communityId');
    final json = jsonDecode(response.data);
    return json.toString();
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
  Future<String> createCommunity({
  required String communityName,
  required String description,
  required List<int> members  }) async {
    final response = await dio.post(
        '/communities/create', queryParameters: {
      'community_name': communityName,
      'description': description,
      'members': members,
    });
    //レスポンスオブジェクトはint
    final communityId = jsonDecode(response.data).toString();
    return communityId;
  }

  Future<void> deleteCommunity({required int communityId}) async {
    await dio.delete('/communities/$communityId');
  }

  Future<String> editCommunity({
    required String communityName,
    required String description,
    required List<int> members  }) async {
    final response = await dio.patch(
        '/communities/create', queryParameters: {
      'community_name': communityName,
      'description': description,
      //TODO: のちにパラメータに含める
      //'community_icon':
    });
    final communityId = jsonDecode(response.data).toString();
    return communityId;
  }

  Future<void> joinCommunity({required int communityId}) async {
    await dio.post('/communities/$communityId/join');
  }

  Future<void> rejectCommunity({required int communityId}) async {
    await dio.delete('/communities/$communityId/join');
  }

  Future<void> inviteCommunity({required int communityId, required List<int> members}) async {
    await dio.patch(
        '/communities/:$communityId/add', queryParameters: {
      'members': members,
    });
  }

  Future<void> leaveCommunity({required int communityId, required int userId}) async {
    await dio.delete('/communities/:$communityId/members/$userId');
  }
}