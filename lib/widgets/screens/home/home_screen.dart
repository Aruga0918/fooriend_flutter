import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/models/entities/community.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:fooriend/utils/mock_constant.dart';
import 'package:fooriend/widgets/screens/home/children/community_circle.dart';
import 'package:fooriend/widgets/screens/home/children/display_bar.dart';
import 'package:fooriend/widgets/screens/home/home_communities.dart';
import 'package:fooriend/widgets/screens/home/home_screen_state.dart';
import 'package:fooriend/widgets/screens/home/home_timeline.dart';
import 'package:fooriend/gen/assets.gen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeScreenController, HomeScreenState>(
      create: (_) => HomeScreenController(context: context, homeStore: HomeStore()),
      builder: (context, _) {
        final selectedName = context.select<HomeScreenState, String>((state) => state.selectedCommunityName);
        final selectedCommunityIconUrl = context.select<HomeScreenState, String>((state) => state.selectedCommunityIconUrl);
        final belongCommunities = context.select<HomeScreenState, List<Community>>((state) => state.belongCommunities);
        final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
        return Scaffold(
              key: _key,
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                title: Image(image: Assets.images.brandlogo),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => _key.currentState!.openDrawer(),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.2,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: ClipRRect(
                        child: Image.network(
                          selectedCommunityIconUrl,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              drawer: Drawer(
                child: Container(
                  color: Colors.deepOrange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,50,0,0),
                        child: Text(
                          "コミュニティ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white
                          ),
                        ),
                      ),
                      CommunityBar(userCommunity: belongCommunities),
                    ],
                  )
                ),
              ),
              body: Column(
                children: [
                  DisplayBar(selectedName: selectedName),
                  Expanded(child: HomeTimeline())
                ],
              ),
            );
      },
    );
  }
}
