import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/log_out_button.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/widgets/screens/sign/sign_in_state.dart';
import 'package:provider/provider.dart';
import 'package:fooriend/gen/assets.gen.dart';



class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SignInScreenController, SignInScreenState>(
      create: (_) => SignInScreenController(userStore: UserStore()),
      builder: (context, _) {
        final _isObscure = context.select<SignInScreenState, bool>((state) => state.isObscure);
        final _userNameController = context.read<SignInScreenController>().userNameController;
        final _userIdController = context.read<SignInScreenController>().userIdController;
        final _passwordController = context.read<SignInScreenController>().passwordController;
        final _isSingUp = context.select<SignInScreenState, bool>((state) => state.isSignUp);
        final _isSingFailed = context.select<SignInScreenState, bool>((state) => state.isSignFailed);
        return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: Assets.images.brandlogo),
                Container(
                  height: _isSingUp
                    ? MediaQuery.of(context).size.height * 0.3
                    : MediaQuery.of(context).size.height * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Visibility(
                            visible: _isSingUp,
                            child: TextField(
                              controller: _userNameController,
                              decoration: InputDecoration(
                                  labelText: "ユーザー名",
                                  fillColor: Colors.deepOrange
                              ),
                            ),
                        ),
                        TextField(
                          controller: _userIdController,
                          decoration: InputDecoration(
                            labelText: "ユーザーID",
                            fillColor: Colors.deepOrange
                          ),
                        ),
                        TextField(
                          controller: _passwordController,
                          onSubmitted: (pwd) => _isSingUp
                              ? context
                                .read<SignInScreenController>()
                                .signUp(userName: _userNameController.text, uid: _userIdController.text, passWord: pwd)
                              : context
                                .read<SignInScreenController>()
                                .logIn(uid: _userIdController.text, passWord: pwd),
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
                        ),
                        _isSingFailed
                        ? Text(
                            "失敗しました。",
                            style: TextStyle(color: Colors.red),
                        )
                        : Text(""),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Checkbox(
                      value: _isSingUp,

                      onChanged: (value) => context
                          .read<SignInScreenController>()
                          .toSingUp()
                  ),
                  title: Text("新規登録はチェック"),
                )
              ],
            ),
          );
      }
    );
  }
}
