import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/post_tile.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/widgets/screens/shop/tabs/post_tab_state.dart';
import 'package:fooriend/widgets/screens/user/user_posts_state.dart';
import 'package:provider/provider.dart';


class UserPosts extends StatelessWidget {
  const UserPosts({
    Key? key,
    required this.userId
  }) : super(key: key);
  final int userId;
  static const _popUpLists = ["編集", "削除"];


  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<UserPostsController, UserPostsState>(
        create: (_) => UserPostsController(
            userId: userId,
          userStore: UserStore()
        ),
        builder: (context, _) {
          final isLoaded = context.select<UserPostsState, bool>((state) => state.isLoaded);
          final postList = context.select<UserPostsState, List<Post>>((state) => state.postList);
          return  isLoaded
              ? ListView.builder(
                shrinkWrap: true,
                itemCount: postList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                      children: [
                        PostTile(post: postList[index]),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: PopupMenuButton(
                                onSelected: (String action) => context
                                    .read<UserPostsController>()
                                    .popUpAction(post: postList[index], action: action, context: context),
                                itemBuilder: (BuildContext context) {
                                  return _popUpLists.map(
                                          (action) => PopupMenuItem(
                                              child: Text(action),
                                              value: action,
                                          )
                                  ).toList();
                                }
                            ),
                          ),
                        )
                  ]
                  );
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
