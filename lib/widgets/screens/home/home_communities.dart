import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/models/entities/community.dart';
import 'package:fooriend/models/entities/user_community.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:fooriend/utils/mock_constant.dart';
import 'package:fooriend/widgets/screens/home/children/drawer_listtile.dart';
import 'package:fooriend/widgets/screens/home/home_communities_state.dart';
import 'package:provider/provider.dart';

import 'children/community_circle.dart';

class CommunityBar extends StatelessWidget {
  final List<UserCommunity> userCommunity;
  const CommunityBar({
    Key? key,
    required this.userCommunity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeCommunitiesController, HomeCommunitiesState>(
      create: (_) => HomeCommunitiesController(context: context, homeStore: HomeStore()),
      builder: (context, _){
        return MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: userCommunity.length,
            itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: DrawerListTile(
                communityName: userCommunity[index].name,
                communityImageUrl: userCommunity[index].iconUrl,
              ),
              onTap: () => context
                  .read<HomeCommunitiesController>()
                  .selectCommunity(userCommunity[index]),
              );
            },
          ),
        );
      }
    );
  }
}
