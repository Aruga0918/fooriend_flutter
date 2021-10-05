import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//これはインスタグラムのストーリーズをクローンしたもの
class CommunityCircle extends StatelessWidget {
  final String communityName;
  final String communityIconUrl;
  const CommunityCircle({
    Key? key,
    required this.communityName,
    required this.communityIconUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Colors.orangeAccent,
                              Colors.deepOrange
                            ]
                        )
                    ),
                  ),
                  CircleAvatar(
                    foregroundImage: NetworkImage(communityIconUrl),
                    radius: 25,
                    // maxRadius: 30,
                  ),
                ]
              ),
              Text(
                communityName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(width: 25,)
        ],
      ),
    );
  }
}
