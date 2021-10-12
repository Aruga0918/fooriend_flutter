import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fooriend/models/entities/shop.dart';

class ShopRepository {
  final Dio dio;

  const ShopRepository({required this.dio});

  Future<Shop> getShopData({required int shopId}) async{
    final response = await dio.get('/shops/$shopId');
    return Shop.fromJson(response);
  }
  //{
//     "id" : shop_id
//     "icon_url" : shop iconのurl
//     "name" : shop名
//     "latitude" : 緯度
//     "longitude" : 経度
//     "description" : 説明
//     "address" : 住所
//     "menu" : メニューのリスト [
//         {
//             "menu_id" : menuのid
//             "name": メニューの名前
//             "price" : 価格
//         }
//         ...
//     ],
// }
}