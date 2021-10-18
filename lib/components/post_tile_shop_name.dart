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
        Icon(Icons.restaurant, color: Colors.grey),
        Container(
          width: MediaQuery.of(context).size.width * 0.77,
          child: Text(
            shopName,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
