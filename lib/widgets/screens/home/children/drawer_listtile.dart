import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fooriend/gen/assets.gen.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.communityName,
    required this.communityImageUrl,
  }) : super(key: key);
  final String communityName;
  final String communityImageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: MediaQuery.of(context).size.width * 0.2,
             width: MediaQuery.of(context).size.width * 0.2,
             child: ClipRRect(
               child: Image.network(
                 communityImageUrl,
                 fit: BoxFit.cover,
               ),
               borderRadius: BorderRadius.circular(8),
             ),
           ),
         ),
         Text(
           communityName,
           style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20,
               color: Colors.white
           ),
         )
       ],
    );
  }
}
