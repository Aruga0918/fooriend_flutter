import 'package:flutter/material.dart';
import 'package:fooriend/gen/assets.gen.dart';

class PostComment extends StatelessWidget {
  final String comment;
  const PostComment({
    Key? key,
    required this.comment
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: Assets.images.comment),
        Text(comment),
      ],
    );
  }
}
