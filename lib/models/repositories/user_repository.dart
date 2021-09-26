import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

class UserRepository {
  final Dio dio;

  const UserRepository({required this.dio});

  Future<String> getUsers() async{
    final response = await dio.get('/users');
    final json = jsonDecode(response.data);
    return json.toString();
  }
  //[
//     {
//         "name" : ユーザーの名前,
//         "id" : (unsigned intの方の)ユーザーid,
//         "uid" : (文字列の方の)ユーザーid,
//         "icon_url" : アイコンのURL,
//     }
//     ...
// ]

  Future<String> getUserData({required int userId}) async{
    final response = await dio.get('/users/$userId');
    final json = jsonDecode(response.data);
    return json.toString();
  }
  //{
//     "name" : ユーザーの名前,
//     "uid" : (文字列の方の)ユーザーid,
//     "id" : (unsigned intの方の)ユーザーid,
//     "icon_url" : アイコンのURL,
//     "profile" : ユーザーのプロフィール,
// }

  Future<void> withdrawal({required int userId}) async{
    await dio.delete('/users/withdrawal');
  }

  Future<void> editUserData({
    required String userName,
    required String userId,
    required String password,
    //TODO:
    //required image user_icon,
    required String profile,
  }) async{
    await dio.patch('/users/edit');
  }

  Future<String> getUserCommunities() async{
    final response = await dio.get('/users/communities');
    final json = jsonDecode(response.data);
    return json.toString();
    //[
    //     {
    //         "id" : コミュニティのid
    //         "name" : コミュニティの名前,
    //         "icon_url" : アイコンのURL,
    //         "member_cnt" : メンバーの数,
    //     }
    //     ...
    // ]
  }
}