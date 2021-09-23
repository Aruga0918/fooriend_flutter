import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:fooriend/utils/mock_constant.dart';
import 'package:fooriend/widgets/screens/home/children/community_circle.dart';
import 'package:fooriend/widgets/screens/home/children/display_bar.dart';
import 'package:fooriend/widgets/screens/home/home_communities.dart';
import 'package:fooriend/widgets/screens/home/home_screen_state.dart';
import 'package:fooriend/widgets/screens/home/home_timeline.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeScreenController, HomeScreenState>(
      create: (_) => HomeScreenController(context: context, homeStore: HomeStore()),
      builder: (context, _) {
        final selectedName = context.select<HomeScreenState, String>((state) => state.selectedCommunityName);
        final List<Map<String, String>> userCommunity = [
          {"name": "A", "icon": MockConstant.ACommunityImage},
          {"name": "B", "icon": MockConstant.BCommunityImage},
          {"name": "C", "icon": MockConstant.CCommunityImage},
          {"name": "D", "icon": MockConstant.DCommunityImage},
          {"name": "E", "icon": MockConstant.ECommunityImage},
        ];
        return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Image.asset('assets/images/brandlogo.png'),
              ),
              body: Column(
                children: [
                  CommunityBar(userCommunity: userCommunity),
                  DisplayBar(selectedName: selectedName),
                  Expanded(child: HomeTimeline())
                ],
              ),
            );
      },
    );
  }
}
