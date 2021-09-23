import 'package:flutter/material.dart';
import 'package:fooriend/widgets/screens/home/home_post_tile.dart';

import 'children/community_circle.dart';

class HomeTimeline extends StatelessWidget {
  const HomeTimeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return HomePostTile();
        },
      ),
    );
  }
}
