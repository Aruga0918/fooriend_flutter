import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/models/repositories/refresh_repository.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fixnum/fixnum.dart';


class PostRepository {
  final Dio dio;

  const PostRepository({required this.dio});


  Future<Post> getPost({required String postId}) async{
    final response = await dio.get('/posts/$postId');
    return Post.fromJson(response);
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

  Future<List<Post>> getUserPost({required int userId}) async{
    final response = await dio.get('/posts/users/$userId');
    final List<Post> postList = [];
    response.data.forEach((data) => postList.add(Post.fromJson(data)));
    return postList;
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

  Future<List<Post>> getShopPost({required int shopId}) async{
    final response = await dio.get('/posts/shops/$shopId');
    final List<Post> postList = [];
    response.data.forEach((data) => postList.add(Post.fromJson(data)));
    return postList;
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

  Future<List<Post>> getCommunityPost({required int communityId}) async{
    final response = await dio.get('/posts/communities/$communityId');
    final List<Post> postList = [];
    response.data.forEach((data) => postList.add(Post.fromJson(data)));
    return postList;
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
    required List<int> menu,
    required String message,
  }) async{
     final response = await dio.post(
        '/posts/users/$userId/shops/$shopId', data: {
          'menus': menu,
          'message': message,
    },);
     print(response);
     if (response.statusCode == 401) {
       final refreshRepository = RefreshRepository(
           dio: AppDio.defaults(),
           userStore: UserStore()
       );
       refreshRepository.refresh();
       final newResponse = await dio.post(
           '/posts/users/$userId/shops/$shopId', data: {
         'menus': menu,
         'message': message,
       });
     }
  }

  Future<void> editPost({
    required int postId,
    required List<dynamic> menu,
    required String message,
  }) async{
    await dio.patch('/posts/$postId', queryParameters: {
      'menus': menu,
      'message': message,
    }
    );
  }

  Future<void> deletePost({required int postId}) async{
    await dio.delete('/posts/communities/$postId');
  }
}