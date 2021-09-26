import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

class CategoryRepository {
  final Dio dio;

  const CategoryRepository({required this.dio});

  Future<String> getCategories() async{
    final response = await dio.get('/categories');
    final json = jsonDecode(response.data);
    return json.toString();
  }
  //[
//     {
//         "id" : カテゴリid
//         "name" : カテゴリ名
//         "shop_cnt" : そのカテゴリに属する店の数
//     }
// ]

  Future<String> getCategoryShops({required int categoryId}) async{
    final response = await dio.get(
        '/categories/$categoryId/shops',
        //NOTE: community_id (int) を指定すると投稿数を表示、指定なしは全体数
    //     queryParameters: {
    //   'option1': hoge
    // }
    );
    final json = jsonDecode(response.data);
    return json.toString();
  }
  //[
//     {
//         "id" : shop_id
//         "name" : shop名
//         "icon_url" : shop iconのurl
//         "posted_cnt" : 投稿の数（コミュニティ単位で）
//         "latitude" : 緯度
//         "longitude" : 経度
//         "description" : 説明
//         "address" : 住所
//     }
// ]
}