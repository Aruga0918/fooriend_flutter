import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fooriend/models/entities/ranking.dart';

class RankingRepository {
  final Dio dio;
  final int shopId;

  const RankingRepository({
    required this.dio,
    required this.shopId
  });

  Future<List<Ranking>> menuRanking() async{
    final response = await dio.get(
        '/rankings/shops/$shopId',
    //NOTE:
      //n_cntが指定されなかったときは3位まで取得
      //community idが指定されなかった時は全部の投稿を用いたランキングを作成
    //     queryParameters: {
    //   'n_cnt': int,
      // 'community/id': int
    // }
    );
    final List<Ranking> rankingList = [];
    response.data.forEach((data) => rankingList.add(Ranking.fromJson(data)));
    return rankingList;
  }
  //[
//     {
//         "menu_id" : メニューid
//         "name" : メニュー名
//         "price" : 価格
//         "posted_cnt" : 食べた人の数
//     }
//     ...
// ]
}