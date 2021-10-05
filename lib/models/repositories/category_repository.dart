import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fooriend/models/entities/category_shop.dart';

class CategoryRepository {
  final Dio dio;

  const CategoryRepository({required this.dio});

  Future<List<dynamic>> getCategories() async{
    final response = await dio.get('/categories');
    final json = response.data;
    final List<dynamic> categoryList = [];
    json.forEach((data) => categoryList.add(data));
    return categoryList;
  }
  //[
//     {
//         "id" : カテゴリid
//         "name" : カテゴリ名
//         "shop_cnt" : そのカテゴリに属する店の数
//     }
// ]

  Future<List<CategoryShop>> getCategoryShops({required int categoryId}) async{
    final response = await dio.get(
        '/categories/$categoryId/shops',
        //NOTE: community_id (int) を指定すると投稿数を表示、指定なしは全体数
    //     queryParameters: {
    //   'option1': hoge
    // }
    );
    final List<CategoryShop> dataList = [];
    response.data.forEach((data) => dataList.add(CategoryShop.fromJson(data)));
    return dataList;
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