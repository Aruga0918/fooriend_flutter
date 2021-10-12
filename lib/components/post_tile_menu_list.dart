import 'package:flutter/material.dart';
import 'package:fooriend/components/post_tile_menu_data.dart';

class PostTileMenuList extends StatelessWidget {
  final List<dynamic> menu;
  const PostTileMenuList({
    Key? key,
    required this.menu
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: menu.map((item) => PostTileMenuData(menuName: item["name"],menuPrice: item["price"].toString(),)).toList()
    );
  }
}

// "menu" : メニューのリスト [
// //         {
// //             "menu_id" : menuのid
// //             "name": メニューの名前
// //             "price" : 価格
// //         }
// //         ...
// //     ],