import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/widgets/screens/sign/sign_in_state.dart';
import 'package:provider/provider.dart';
import 'package:fooriend/gen/assets.gen.dart';



class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SignInScreenController, SignInScreenState>(
      create: (_) => SignInScreenController(),
      builder: (context, _) {
        final _isObscure = context.select<SignInScreenState, bool>((state) => state.isObscure);
        final _userIdController = context.read<SignInScreenController>().userIdController;
        final _passwordController = context.read<SignInScreenController>().passwordController;
          return Scaffold(
            appBar: AppBar(
              title: Text("ログイン"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: Assets.images.brandlogo),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextField(
                          controller: _userIdController,
                          decoration: InputDecoration(
                            labelText: "ユーザーID",
                            fillColor: Colors.deepOrange
                          ),
                        ),
                        TextField(
                          controller: _passwordController,
                          onSubmitted: (pwd) => context
                              .read<SignInScreenController>()
                              .submit(uid: _userIdController.text, passWord: pwd),
                          decoration: InputDecoration(
                              labelText: "パスワード",
                              hoverColor: Colors.deepOrange,
                              suffixIcon: IconButton(
                                icon: _isObscure ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                                onPressed: () => context
                                    .read<SignInScreenController>()
                                    .visible(),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
      }
    );
  }
}
