import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/post_tile.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/widgets/screens/shop/tabs/post_tab_state.dart';
import 'package:provider/provider.dart';


class PostTab extends StatelessWidget {
  const PostTab({
    Key? key,
    required this.shopId
  }) : super(key: key);
  final int shopId;


  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<PostTabController, PostTabState>(
        create: (_) => PostTabController(shopId: shopId),
        builder: (context, _) {
          final isLoaded = context.select<PostTabState, bool>((state) => state.isLoaded);
          final postList = context.select<PostTabState, List<Post>>((state) => state.postList);
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
