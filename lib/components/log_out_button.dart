import 'package:flutter/material.dart';
import 'package:fooriend/models/entities/user.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/widgets/screens/sign/sign_in.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key? key,
    required this.logOut
  }) : super(key: key);
  final Function() logOut;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("ログアウト"),
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black
      ),
      onPressed: logOut
    );
  }
}
