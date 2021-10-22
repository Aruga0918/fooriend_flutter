import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/models/entities/category_shop.dart';
import 'package:fooriend/models/entities/shop.dart';
import 'package:fooriend/widgets/screens/shop/shop_screen_state.dart';
import 'package:fooriend/widgets/screens/shop/shop_screen_tabview.dart';
import 'package:fooriend/widgets/screens/shop/shop_screen_upper.dart';
import 'package:fooriend/widgets/screens/shop/tabs/menu_tab.dart';
import 'package:fooriend/widgets/screens/shop/tabs/post_tab.dart';
import 'package:fooriend/widgets/screens/shop/tabs/ranking_tab.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({
    Key? key,
    required this.shopId,
  }) : super(key: key);
  final int shopId;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ShopScreenController, ShopScreenState>(
        create: (_) => ShopScreenController(shopId: shopId),
        builder: (context, _) {
          final shopData = context.select<ShopScreenState, Shop>((state) => state.shopData);
          final isLoaded = context.select<ShopScreenState, bool>((state) => state.isLoaded);
          return Scaffold(
            appBar: AppBar(
              title: Text("店舗情報"),
            ),
            body: isLoaded
            ? StickyTabScreen(
                onRefresh: context.read<ShopScreenController>().mock(),
                tabHeader: [ShopScreenUpper(shopData: shopData)],
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
                    RankingTab(shopId: shopId),
                    MenuTab(shopId: shopId),
                    PostTab(shopId: shopId),
                  ],
                ),
              )
            : Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepOrange))
                ],
              ),
            )
          );
        }
    );
  }
}