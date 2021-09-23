import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
          CupertinoSearchTextField(),
          Material(child: TextField())
        ],
      ),
    );
  }
}
