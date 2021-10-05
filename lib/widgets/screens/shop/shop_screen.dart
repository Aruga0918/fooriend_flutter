import 'package:flutter/material.dart';
import 'package:fooriend/models/entities/category_shop.dart';
import 'package:fooriend/widgets/screens/shop/children/tab_menu.dart';
import 'package:fooriend/widgets/screens/shop/children/tab_post.dart';
import 'package:fooriend/widgets/screens/shop/children/tab_ranking.dart';
import 'package:fooriend/widgets/screens/shop/shop_screen_tabview.dart';
import 'package:fooriend/widgets/screens/shop/shop_screen_upper.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({
    Key? key,
    required this.categoryShop,
  }) : super(key: key);
  final CategoryShop categoryShop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("店舗情報"),
      ),
      body: StickyTabScreen(
        tabHeader: [ShopScreenUpper(shopData: categoryShop)],
        tabBar: TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.deepOrange,
          tabs: [
            Tab(text: "ランキング"),
            Tab(text: "メニュー"),
            Tab(text: "投稿"),
          ],
        ),
        tabBarView: TabBarView(
          children: [
            RankingTab(),
            MenuTab(),
            PostTab(),
          ],
        ),
      ),
    );
  }
}
