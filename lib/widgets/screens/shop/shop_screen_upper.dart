import 'package:flutter/material.dart';
import 'package:fooriend/gen/assets.gen.dart';
import 'package:fooriend/models/entities/category_shop.dart';
import 'package:fooriend/models/entities/shop.dart';

class ShopScreenUpper extends StatelessWidget {
  const ShopScreenUpper({
    Key? key,
    required this.shopData
  }) : super(key: key);
  final Shop shopData;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Image.network(
                    shopData.iconUrl,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    shopData.name,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: Assets.images.shopTime,
                    height: 24,
                    width: 24,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Text(
                    shopData.description,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                   image: Assets.images.shopAddress,
                   height: 24,
                   width: 24,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                    child: Text(shopData.address)
                ),
              ],
            ),
          ],
        ),
    );
  }
}
