import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/post_tile.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/widgets/screens/home/home_timeline_state.dart';
import 'package:fooriend/widgets/screens/shop/tabs/post_tab_state.dart';
import 'package:provider/provider.dart';


class HomeTimeLine extends StatelessWidget {
  const HomeTimeLine({
    Key? key,
    required this.communityId
  }) : super(key: key);
  final int communityId;


  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeTimeLineController, HomeTimeLineState>(
        create: (_) => HomeTimeLineController(communityId: communityId),
        builder: (context, _) {
          print("reBuild!!!!!");
          final isLoaded = context.select<HomeTimeLineState, bool>((state) => state.isLoaded);
          final postList = context.select<HomeTimeLineState, List<Post>>((state) => state.postList);
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
