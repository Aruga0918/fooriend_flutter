import 'package:flutter/material.dart';

class MenuData extends StatelessWidget {
  final String menuName;
  final String menuPrice;
  const MenuData({
    Key? key,
    required this.menuName,
    required this.menuPrice,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("・"),
        Text(menuName),
        Text(menuPrice)
      ],
    );
  }
}
