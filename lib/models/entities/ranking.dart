import 'dart:convert';
import 'package:fooriend/utils/mock_constant.dart';

class Ranking {
  final int menuId;
  final String name;
  final int price;
  final int postedCnt;

  Ranking({
    required this.menuId,
    required this.name,
    required this.price,
    required this.postedCnt
  });

  static Ranking fromJson(data) {
    // final data = json.decode(jsonData);
    final ranking = Ranking(
      menuId: data["menu_id"],
      name: data["name"],
      price: data["price"],
      postedCnt: data["posted_cnt"],
    );
    return ranking;
  }

  static String toJson({required Ranking ranking}) {
    return json.encode({
      "menu_id": ranking.menuId.toString(),
      "name": ranking.name,
      "price": ranking.price,
      "posted_cnt": ranking.postedCnt
    });
  }
}
//[
//     {
//         "menu_id" : メニューid
//         "name" : メニュー名
//         "price" : 価格
//         "posted_cnt" : 食べた人の数
//     }
//     ...
// ]