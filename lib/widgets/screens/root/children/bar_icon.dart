import 'package:flutter/material.dart';

class BarIcon extends StatelessWidget {
  const BarIcon({
    Key? key,
    required this.path,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(path, width: 30, height: 30,),
    );
  }
}
