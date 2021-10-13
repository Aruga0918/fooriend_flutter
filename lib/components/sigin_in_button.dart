import 'package:flutter/material.dart';
import 'package:fooriend/widgets/screens/sign/sign_in.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("ログイン"),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black
        ),
        onPressed: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignInScreen())
        );},
    );
  }
}
