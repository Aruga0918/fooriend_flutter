import 'package:flutter/material.dart';
import 'package:fooriend/components/post_tile_comment.dart';
import 'package:fooriend/components/post_tile_menu_list.dart';
import 'package:fooriend/components/post_tile_shop_name.dart';
import 'package:fooriend/components/post_tile_user_name.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/widgets/screens/home/children/post_comment.dart';
import 'package:fooriend/widgets/screens/home/children/post_menulist.dart';
import 'package:fooriend/widgets/screens/home/children/user_icon.dart';
import 'package:fooriend/widgets/screens/home/children/user_names.dart';


class PostTile extends StatelessWidget {
  const PostTile({
    Key? key,
    required this.post
  }) : super(key: key);
  final Post post;


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
                  PostTileUserNames(userName: post.userName, uid: post.uid),
                  PostTileShopName(shopName: post.shopName),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: PostTileComment(comment: post.message),
                  ),
                  PostTileMenuList(menu: post.menu),
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
