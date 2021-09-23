import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        foregroundImage: AssetImage("assets/images/user_sample.jpg"),
        radius: 20,
      ),
    );
  }
}
