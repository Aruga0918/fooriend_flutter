import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/widgets/screens/home/home_screen.dart';
import 'package:fooriend/widgets/screens/root/children/bar_icon.dart';
import 'package:fooriend/widgets/screens/search/search_screen.dart';
import 'package:fooriend/widgets/screens/user/user_screen.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';
import 'root_screen_state.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<RootScreenController, RootScreenState>(
        create: (_) => RootScreenController(
          context: context,
        ),
      builder: (context, _){
          return CupertinoTabScaffold(
              controller: context
                  .watch<RootScreenController>()
                  .tabController,
              tabBuilder: (context, index) {
                return CupertinoTabView(
                  builder: (context) {
                    return CupertinoPageScaffold(
                        child: [
                          HomeScreen(),
                          SearchScreen(),
                          UserScreen(),
                        ][index],
                    );
                  },
                );
              },
            tabBar: CupertinoTabBar(
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home, color: Colors.deepOrange)
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined),
                  activeIcon: Icon(Icons.search, color: Colors.deepOrange)
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person, color: Colors.deepOrange)
                ),
              ],
            ),
          );
      },
    );
  }
}
