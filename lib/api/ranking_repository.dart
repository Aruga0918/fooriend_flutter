import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

class RankingRepository {
  final Dio dio;

  const RankingRepository({required this.dio});

  Future<String> menuRanking() async{
    final response = await dio.get(
        '/rankings/shops/:shop_id',
    //NOTE:
      //n_cntが指定されなかったときは3位まで取得
      //community idが指定されなかった時は全部の投稿を用いたランキングを作成
    //     queryParameters: {
    //   'n_cnt': int,
      // 'community/id': int
    // }
    );
    final json = jsonDecode(response.data);
    return json.toString();
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