import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fooriend/widgets/screens/sign/sign_in.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignInScreen()
      );
  }
}
