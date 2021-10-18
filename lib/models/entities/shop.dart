import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Shop {
  final int id;
  final String name;
  final String iconUrl;
  final double latitude;
  final double longitude;
  final String description;
  final String address;
  final List<dynamic> menu;

  const Shop({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.address,
    required this.menu,
  });

  static const mock = Shop(id: 0, name: "mock", iconUrl: "", latitude: 0.0, longitude: 0.0, description: "", address: "", menu: []);

  static fromJson(dataList) {
    final data = dataList.data;
    final shop = Shop(
      id: data["id"],
      name: data["name"],
      iconUrl: data["icon_url"],
      latitude: double.parse(data["latitude"]),
      longitude: double.parse(data["longitude"]),
      description: data["description"],
      address: data["address"],
      menu: data["menu"]
    );
    return shop;
  }
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