import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/models/entities/category_shop.dart';
import 'package:fooriend/widgets/screens/search/children/shop_item.dart';
import 'package:fooriend/widgets/screens/search/search_result_screen_state.dart';
import 'package:fooriend/widgets/screens/shop/shop_screen.dart';
import 'package:provider/provider.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({
    Key? key,
    required this.id,
    required this.categoryName,
  }) : super(key: key);
  final int id;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SearchResultScreenController, SearchResultScreenState>(
      create: (_) => SearchResultScreenController(id: id),
      builder: (context, _){
        final isLoaded = context.select<SearchResultScreenState, bool>((state) => state.isLoaded);
        final shopList = context.select<SearchResultScreenState, List<CategoryShop>>((state) => state.categoryShops);
        return Scaffold(
          appBar: AppBar(title: Text(categoryName)),
          body: isLoaded
            ? ListView.builder(
            shrinkWrap: true,
            itemCount: shopList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: ShopItem(categoryShop: shopList[index]),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShopScreen(categoryShop: shopList[index]))
                  );
                },
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
          )
        );
      },
    );
  }
}
