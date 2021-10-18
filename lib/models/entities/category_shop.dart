import 'dart:convert';

import 'package:flutter/cupertino.dart';

class CategoryShop {
  final int id;
  final String name;
  final String iconUrl;
  final int postedCount;
  final double latitude;
  final double longitude;
  final String description;
  final String address;

  const CategoryShop({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.postedCount,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.address,
  });

  static const CategoryShop mock = CategoryShop(id: 0, name: "店を選択してください", iconUrl: "", postedCount: 0, latitude: 0.0, longitude: 0.0, description: "", address: "");
  static fromJson(data) {
    final categoryShop = CategoryShop(
        id: data["id"],
        name: data["name"],
        iconUrl: data["icon_url"],
        postedCount: data["posted_cnt"],
        latitude: double.parse(data["latitude"]),
        longitude: double.parse(data["longitude"]),
        description: data["description"],
        address: data["address"],
    );
    return categoryShop;
  }
}