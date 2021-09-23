import 'package:flutter/material.dart';
import 'package:fooriend/widgets/screens/home/children/post_comment.dart';
import 'package:fooriend/widgets/screens/home/children/post_menulist.dart';
import 'package:fooriend/widgets/screens/home/children/post_time.dart';
import 'package:fooriend/widgets/screens/home/children/user_icon.dart';
import 'package:fooriend/widgets/screens/home/children/user_names.dart';

import 'children/post_shop_name.dart';

class HomePostTile extends StatelessWidget {
  const HomePostTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: UserIcon(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserNames(),
                  ShopName(shopName: "RestaurantName"),
                  PostComment(comment: "コメント"),
                  MenuList(menu: [["ハンバーガー", "¥100"],["チーズバーガー", "¥200"]]),
                    ],
                  ),
            ],
          ),
          Text("投稿された時間", style: TextStyle(color: Colors.grey),)
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.2
            )
        )
      ),
        );
  }
}
