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

  CategoryShop({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.postedCount,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.address,
  });
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