import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/post_tile.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/widgets/screens/shop/tabs/post_tab_state.dart';
import 'package:fooriend/widgets/screens/user/user_posts_state.dart';
import 'package:provider/provider.dart';


class UserPosts extends StatelessWidget {
  const UserPosts({
    Key? key,
    required this.userId
  }) : super(key: key);
  final int userId;


  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<UserPostsController, UserPostsState>(
        create: (_) => UserPostsController(userId: 1),
        builder: (context, _) {
          final isLoaded = context.select<UserPostsState, bool>((state) => state.isLoaded);
          final postList = context.select<UserPostsState, List<Post>>((state) => state.postList);
          return  isLoaded
              ? ListView.builder(
                shrinkWrap: true,
                itemCount: postList.length,
                itemBuilder: (BuildContext context, int index) {
                  return PostTile(post: postList[index]);
                },
              )
              : Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                        valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepOrange))
                  ],
                ),
            );
        }
    );
  }
}
