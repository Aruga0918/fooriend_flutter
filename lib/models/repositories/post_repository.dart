import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

class PostRepository {
  final Dio dio;

  const PostRepository({required this.dio});

  Future<String> getPost({required String postId}) async{
    final response = await dio.get('/posts/$postId');
    final json = jsonDecode(response.data);
    return json.toString();
  }
  //{
//     "post_id" : 投稿のid,
//     "user_name" : ユーザーの名前,
//     "user_id" : (数字の方の)ユーザーid,
//     "uid" : (文字列の方の)ユーザーid,
//     "user_icon_url" : ユーザーiconのurl
//     "shop_id" : ショップのid,
//     "shop_name" : ショッピの名前
//     "shop_icon_url" : ショップiconのurl
//     "message" : 投稿のコメント,
//     "menu" : メニューのリスト [
//         {
//             "menu_id" : menuのid
//             "name": メニューの名前
//             "price" : 価格
//         }
//         ...
//     ],
//     "created_at" : 投稿時間
// }

  Future<String> getUserPost({required int userId}) async{
    final response = await dio.get('/posts/users/$userId');
    final json = jsonDecode(response.data);
    return json.toString();
  }
  //[
//     {
//         "post_id" : 投稿のid,
//         "user_name" : ユーザーの名前,
//         "user_id" : (数字の方の)ユーザーid,
//         "uid" : (文字列の方の)ユーザーid,
//         "user_icon_url" : ユーザーiconのurl
//         "shop_id" : ショップのid,
//         "shop_name" : ショッピの名前
//         "shop_icon_url" : ショップiconのurl
//         "message" : 投稿のコメント,
//         "menu" : メニューのリスト [
//             {
//                 "menu_id" : menuのid
//                 "name": メニューの名前
//                 "price" : 価格
//             }
//             ...
//         ],
//         "created_at" : 投稿時間
//     }
//     ...
// ]

  Future<String> getShopPost({required int shopId}) async{
    final response = await dio.get('/posts/shops/$shopId');
    final json = jsonDecode(response.data);
    return json.toString();
  }
  //[
//     {
//         "post_id" : 投稿のid,
//         "user_name" : ユーザーの名前,
//         "user_id" : (数字の方の)ユーザーid,
//         "uid" : (文字列の方の)ユーザーid,
//         "user_icon_url" : ユーザーiconのurl
//         "shop_id" : ショップのid,
//         "shop_name" : ショッピの名前
//         "shop_icon_url" : ショップiconのurl
//         "message" : 投稿のコメント,
//         "menu" : メニューのリスト [
//             {
//                 "menu_id" : menuのid
//                 "name": メニューの名前
//                 "price" : 価格
//             }
//             ...
//         ],
//         "created_at" : 投稿時間
//     }
//     ...
// ]

  Future<String> getCommunityPost({required int communityId}) async{
    final response = await dio.get('/posts/communities/$communityId');
    final json = jsonDecode(response.data);
    return json.toString();
  }
  //[
//     {
//         "post_id" : 投稿のid,
//         "user_name" : ユーザーの名前,
//         "user_id" : (数字の方の)ユーザーid,
//         "uid" : (文字列の方の)ユーザーid,
//         "user_icon_url" : ユーザーiconのurl
//         "shop_id" : ショップのid,
//         "shop_name" : ショッピの名前
//         "shop_icon_url" : ショップiconのurl
//         "message" : 投稿のコメント,
//         "menu" : メニューのリスト [
//             {
//                 "menu_id" : menuのid
//                 "name": メニューの名前
//                 "price" : 価格
//             }
//             ...
//         ],
//         "created_at" : 投稿時間
//     }
//     ...
// ]

  Future<void> createPost({
    required int userId,
    required int shopId,
    required List<int> menus,
    required String message,
  }) async{
     await dio.post(
        '/posts/users/$userId/shops/$shopId', queryParameters: {
          'menus': menus,
          'message': message,
    });
  }

  Future<void> editPost({
    required int postId,
    required List<int> menu,
    required String message,
  }) async{
    await dio.patch('/posts/$postId');
  }

  Future<void> deletePost({required int postId}) async{
    await dio.delete('/posts/communities/$postId');
  }
}