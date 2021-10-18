import 'dart:convert';
import 'package:fooriend/utils/mock_constant.dart';

class Category {
  final String name;
  final int id;

  const Category({
    required this.name,
    required this.id
  });

  static const Category mock = Category(name: "カテゴリーを選択してください", id: 0);

  static Category fromJson(data) {
    final user = Category(
      name: data["name"],
      id: data["id"],
    );
    return user;
  }

  static String toJson({required Category category}) {
    return json.encode({
      "name": category.name,
      "id": category.id,
    });
  }

}
