import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

class ShopRepository {
  final Dio dio;

  const ShopRepository({required this.dio});

  Future<String> getShopData({required String shopId}) async{
    final response = await dio.get('/shops/$shopId');
    final json = jsonDecode(response.data);
    return json.toString();
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