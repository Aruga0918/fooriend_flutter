import 'package:flutter/material.dart';

class PostTileMenuData extends StatelessWidget {
  final String menuName;
  final String menuPrice;
  const PostTileMenuData({
    Key? key,
    required this.menuName,
    required this.menuPrice,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("・"),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
            child: Text(
                menuName,
              overflow: TextOverflow.ellipsis,
            )
        ),
        Text("¥${menuPrice}")
      ],
    );
  }
}
