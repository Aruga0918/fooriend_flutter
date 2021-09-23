import 'package:flutter/material.dart';

class DisplayBar extends StatelessWidget {
  final String selectedName;
  const DisplayBar({
    Key? key,
    required this.selectedName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      alignment: Alignment.center,
      child: Text(
          selectedName,
          textAlign: TextAlign.center,
      ),
    );
  }
}
