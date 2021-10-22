import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fooriend/models/entities/rough_user.dart';
import 'package:fooriend/models/entities/token.dart';
import 'package:fooriend/models/entities/user.dart';
import 'package:fooriend/models/entities/user_community.dart';
import 'package:fooriend/models/repositories/refresh_repository.dart';
import 'package:fooriend/models/stores/user_store.dart';

class UserRepository {
  final Dio dio;

  const UserRepository({required this.dio});

  Future<List<RoughUser>> getUsers() async{
    final response = await dio.get('/users');
    List<RoughUser> users = [];
    response.data.forEach((data) => users.add(RoughUser.fromJson(data)));
    print(users);
    return users;
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

  Future<User> getUserData({required int userId}) async{
    final response = await dio.get('/users/$userId');
    if (response.statusCode == 401) {
      final refreshRepository = RefreshRepository(
          dio: dio,
          userStore: UserStore()
        );
      refreshRepository.refresh();
      final newResponse = await dio.get('/users/$userId');
      return User.fromJson(newResponse.data);
    }
    return User.fromJson(response.data);
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

  Future<List<UserCommunity>> getUserCommunities() async{
    final userStore = UserStore();
    final response = await dio.get(
        '/users/communities', options: new Options(
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer ${Token.fromJson(json.decode(userStore.tokenData.value)).accessToken}'
      }
    )
    );
    List<UserCommunity> communityList = [];
    if (response.data.isNotEmpty) {
      response.data.forEach((data) => communityList.add(UserCommunity.fromJson(data)));
    }
    print("below data is userCommunity");
    print(response.data);
    return communityList;
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