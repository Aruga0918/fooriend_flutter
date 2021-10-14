import 'package:flutter/material.dart';

class UserScreenUpper extends StatelessWidget {
  const UserScreenUpper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                foregroundImage: AssetImage("assets/images/user_sample.jpg"),
                radius: 40,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ユーザー名",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                Text(
                  "@"
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Text(
            "プロフィール"
          ),
        )
      ],
    );
  }
}
