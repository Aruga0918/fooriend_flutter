import 'dart:convert';

import 'package:flutter/material.dart';

class Menu {
  final String name;
  final int price;
  final int id;



  const Menu({
    required this.name,
    required this.price,
    required this.id
  });

  static const mock = Menu(name: "選択されていません", price: 0, id: 0);


  static Menu fromJson(data) {
    final menu = Menu(
      name: data["name"],
      price: data["price"],
      id: data["menu_id"],
    );
    return menu;
  }

  static String toJson({required Menu category}) {
    return json.encode({
      "name": category.name,
      "price": category.price,
      "menu_id": category.id,
    });
  }

}


// "menu" : メニューのリスト [
//         {
//             "menu_id" : menuのid
//             "name": メニューの名前
//             "price" : 価格
//         }
//         ...
//     ],