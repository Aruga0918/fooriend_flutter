import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/log_out_button.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/widgets/screens/shop/shop_screen_tabview.dart';
import 'package:fooriend/widgets/screens/sign/sign_in.dart';
import 'package:fooriend/widgets/screens/user/user_posts.dart';
import 'package:fooriend/widgets/screens/user/user_screen_state.dart';
import 'package:fooriend/widgets/screens/user/user_screen_upper.dart';
import 'package:provider/provider.dart';


class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<UserScreenController, UserScreenState>(
        create: (_) => UserScreenController(userStore: UserStore()),
        builder: (context, _) {
          final isLogIn = context.select<UserScreenState, bool>((state) => state.isLogin);
          final userName = context.select<UserScreenState, String>((state) => state.username);
          final userId = context.select<UserScreenState, int>((state) => state.userId);
          final uid = context.select<UserScreenState, String>((state) => state.uid);
          final userIconUrl = context.select<UserScreenState, String>((state) => state.userIcon);
          final profile = context.select<UserScreenState, String>((state) => state.profile);

          return Scaffold(
            appBar: AppBar(
              title: isLogIn
                ? Text("ようこそ")
                : Text("ログイン"),
              actions: isLogIn
              ? [LogOutButton(logOut: () => context.read<UserScreenController>().logOut())]
              : [],
            ),
            body: Container(
               child: !isLogIn
                 ? SignInScreen()
                 : StickyTabScreen(
                  onRefresh: context.read<UserScreenController>().refresh(),
                  tabHeader: [UserScreenUpper(
                    userName: userName,
                    uid: uid,
                    userIconUrl: userIconUrl,
                    profile: profile,
                  )],
                  tabBar: TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.deepOrange,
                    tabs: [
                      Tab(text: "投稿"),
                    ],
                  ),
                 tabBarView: TabBarView(
                   children: [
                     UserPosts(userId: userId)
                   ],
                 ),
               ),
            ),
          );
    },
    );
  }
}
// return Container(
// child: SignInScreen()
// );