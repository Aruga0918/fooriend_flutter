import 'package:flutter/material.dart';

class UserNames extends StatelessWidget {
  const UserNames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Sample1",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "@uid1",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
