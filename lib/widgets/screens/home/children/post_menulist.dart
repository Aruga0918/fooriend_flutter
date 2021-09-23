import 'package:flutter/material.dart';
import 'package:fooriend/widgets/screens/home/children/post_menu_data.dart';

class MenuList extends StatelessWidget {
  final List<List<String>> menu;
  const MenuList({
    Key? key,
    required this.menu
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: menu.map((List<String> item) => MenuData(menuName: item[0],menuPrice: item[1],)).toList()
    );
  }
}
