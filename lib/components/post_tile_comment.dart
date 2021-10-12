import 'package:flutter/material.dart';
import 'package:fooriend/gen/assets.gen.dart';

class PostTileComment extends StatelessWidget {
  final String comment;
  const PostTileComment({
    Key? key,
    required this.comment
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: Assets.images.comment),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.77,
            child: Text(
                comment,
              overflow: TextOverflow.clip,
            )
        ),
      ],
    );
  }
}
