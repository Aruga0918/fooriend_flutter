import 'package:flutter/material.dart';

class UserScreenUpper extends StatelessWidget {
  const UserScreenUpper({
    Key? key,
    required this.userName,
    required this.uid,
    required this.userIconUrl,
    required this.profile,
  }) : super(key: key);
  final String userName;
  final String uid;
  final String userIconUrl;
  final String profile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                foregroundImage: NetworkImage(userIconUrl),
                radius: 40,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                Text(
                  uid
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Text(
            profile
          ),
        )
      ],
    );
  }
}
