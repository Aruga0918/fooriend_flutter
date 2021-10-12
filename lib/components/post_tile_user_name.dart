import 'package:flutter/material.dart';
import 'package:fooriend/components/post_tile.dart';

class PostTileUserNames extends StatelessWidget {
  const PostTileUserNames({
    Key? key,
    required this.userName,
    required this.uid
  }) : super(key: key);
  final String userName;
  final String uid;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          userName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          uid,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
