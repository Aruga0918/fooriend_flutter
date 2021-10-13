import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/log_out_button.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/widgets/screens/sign/sign_in.dart';
import 'package:fooriend/widgets/screens/user/user_screen_state.dart';
import 'package:provider/provider.dart';


class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<UserScreenController, UserScreenState>(
        create: (_) => UserScreenController(userStore: UserStore()),
        builder: (context, _) {
          final isLogIn = context.select<UserScreenState, bool>((state) => state.isLogin);
          return Scaffold(
            appBar: AppBar(
              title: Text("ようこそ"),
              actions: [LogOutButton(logOut: () => context.read<UserScreenController>().logOut())],
            ),
            body: Container(
               child: isLogIn
                 ? Text("ようこそ")
                 : SignInScreen()
            ),
          );
    },
    );
  }
}
// return Container(
// child: SignInScreen()
// );