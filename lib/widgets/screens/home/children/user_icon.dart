import 'package:flutter/material.dart';

import 'package:fooriend/gen/assets.gen.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        foregroundImage: Assets.images.profileIcon,
        radius: 20,
      ),
    );
  }
}
