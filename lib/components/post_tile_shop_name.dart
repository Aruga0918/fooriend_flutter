import 'package:flutter/material.dart';

class PostTileShopName extends StatelessWidget {
  final String shopName;
  const PostTileShopName({
    Key? key,
    required this.shopName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/shop_icon.png"),
        Text(shopName),
      ],
    );
  }
}
