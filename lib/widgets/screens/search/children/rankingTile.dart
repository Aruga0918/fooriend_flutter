import 'package:flutter/material.dart';
import 'package:fooriend/models/entities/ranking.dart';

class RankingTile extends StatelessWidget {
  const RankingTile({
    Key? key,
    required this.rankingImage,
    required this.ranking,
  }) : super(key: key);
  final ImageProvider rankingImage;
  final Ranking ranking;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image(
              image: rankingImage,
            height: MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    ranking.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("¥${ranking.price}"),
                      Text("投稿 ${ranking.postedCnt}件")
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
