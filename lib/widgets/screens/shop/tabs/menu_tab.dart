import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/post_tile.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/widgets/screens/shop/tabs/post_tab_state.dart';
import 'package:provider/provider.dart';

import 'menu_tab_state.dart';


class MenuTab extends StatelessWidget {
  const MenuTab({
    Key? key,
    required this.shopId
  }) : super(key: key);
  final int shopId;


  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<MenuTabController, MenuTabState>(
        create: (_) => MenuTabController(shopId: shopId),
        builder: (context, _) {
          final isLoaded = context.select<MenuTabState, bool>((state) => state.isLoaded);
          final menuList = context.select<MenuTabState, List<dynamic>>((state) => state.menuList);
          return  isLoaded
              ? ListView.builder(
                shrinkWrap: true,
                itemCount: menuList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(menuList[index]["name"]),
                    trailing: Text(menuList[index]["price"].toString()),
                  );
                },
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
              );
        }
    );
  }
}
