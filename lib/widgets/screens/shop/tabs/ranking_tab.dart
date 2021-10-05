import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/gen/assets.gen.dart';
import 'package:fooriend/widgets/screens/shop/tabs/ranking_tab_state.dart';
import 'package:provider/provider.dart';
import 'package:fooriend/widgets/screens/search/children/rankingTile.dart';
import 'package:fooriend/models/entities/ranking.dart';

class RankingTab extends StatelessWidget {
  const RankingTab({
    Key? key,
    required this.shopId
  }) : super(key: key);
  final int shopId;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<RankingTabController, RankingTabState>(
      create: (_) => RankingTabController(shopId: shopId),
      builder: (context, _) {
        final isLoaded = context.select<RankingTabState, bool>((state) => state.isLoaded);
        final rankImages = [Assets.images.ranking1, Assets.images.ranking2, Assets.images.ranking3];
        final rankingList = context.select<RankingTabState, List<Ranking>>((state) => state.rankingList);
        return  isLoaded
          ? ListView.builder(
            itemCount: rankImages.length,
            itemBuilder: (context, index) {
              return RankingTile(
                  rankingImage: rankImages[index],
                  ranking: rankingList[index]
              );
            }
          )
          : Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepOrange))
            ],
          ),
        );
      }
    );
  }
}
