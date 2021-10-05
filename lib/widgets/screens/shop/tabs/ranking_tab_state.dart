import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/ranking.dart';
import 'package:fooriend/models/repositories/ranking_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'ranking_tab_state.freezed.dart';

@freezed
class RankingTabState with _$RankingTabState  {
  const factory RankingTabState({
    @Default([]) List<Ranking> rankingList,
    @Default(false) bool isLoaded,
  }) = _RankingTabState;
}

class RankingTabController extends StateNotifier<RankingTabState> with LocatorMixin {
  RankingTabController({required this.shopId}) : super(const RankingTabState());
  final int shopId;
  late final rankingRepository = RankingRepository(
    dio: AppDio.defaults(),
    shopId: shopId
  );
  @override
  void initState() async{
    super.initState();
    final list = await rankingRepository.menuRanking();
    state = state.copyWith(
      rankingList: list,
      isLoaded: true
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
