import 'package:flutter/material.dart';
import 'package:fooriend/models/entities/category_shop.dart';
import 'package:fooriend/utils/const.dart';

class ShopItem extends StatelessWidget {
  const ShopItem({
    Key? key,
    required this.categoryShop,
  }) : super(key: key);

  final CategoryShop categoryShop;

  @override
  Widget build(BuildContext context) {
    final postCount = categoryShop.postedCount.toString();
    NetworkImage imageHandler() {
      try{
        return NetworkImage(categoryShop.iconUrl);
      }catch (e){
        return NetworkImage(Constant.noImage);
      }
    }

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            categoryShop.iconUrl,
            height: MediaQuery.of(context).size.width * 0.25,
            width: MediaQuery.of(context).size.width * 0.25,
            errorBuilder: (c, o, s) {
              print('Load failed : ${c.toString()}');
              return Image.network(
                Constant.noImage,
                height: MediaQuery.of(context).size.width * 0.25,
                width: MediaQuery.of(context).size.width * 0.25,
              );
            }
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                  categoryShop.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
              ),
              Text(
                "投稿数：$postCount",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}
