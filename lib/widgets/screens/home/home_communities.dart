import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/models/entities/user_community.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/widgets/screens/home/children/drawer_listtile.dart';
import 'package:fooriend/widgets/screens/home/home_communities_state.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CommunityBar extends StatelessWidget {
  final List<UserCommunity> userCommunity;
  const CommunityBar({
    Key? key,
    required this.userCommunity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeCommunitiesController, HomeCommunitiesState>(
      create: (_) => HomeCommunitiesController(
        context: context,
        homeStore: HomeStore(),
        userStore: UserStore(),
        belongingCommunities: userCommunity
      ),
      builder: (context, _){
        return MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: userCommunity.length,
            itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                index == 0
                ? InkWell(
                    child: DrawerListTile(
                      communityName: userCommunity[index].name,
                      communityImageUrl: userCommunity[index].iconUrl,
                    ),
                    onTap: () => context
                        .read<HomeCommunitiesController>()
                        .selectCommunity(userCommunity[index]),
                  )
                :  Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actions: [
                      IconSlideAction(
                        caption: "詳細",
                        color: Colors.white,
                        foregroundColor: Colors.black,
                        icon: Icons.info_outline,
                      ),
                      userCommunity[index].isJoin
                      ?  IconSlideAction(
                          caption: "退会",
                          color: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.logout,
                        )
                      :  IconSlideAction(
                        caption: "参加",
                        color: Colors.white,
                        foregroundColor: Colors.red,
                        icon: Icons.login,
                      )
                    ],
                    actionExtentRatio: 0.25,
                    child: InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: DrawerListTile(
                          communityName: userCommunity[index].name,
                          communityImageUrl: userCommunity[index].iconUrl,
                        ),
                      ),
                      onTap: () => context
                          .read<HomeCommunitiesController>()
                          .selectCommunity(userCommunity[index]),
                      ),
                  ),
              ],
            );
            },
          ),
        );
      }
    );
  }
}
