import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fooriend/models/entities/community.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_communities_state.freezed.dart';

@freezed
class HomeCommunitiesState with _$HomeCommunitiesState {
  const factory HomeCommunitiesState({
    @Default("") String selectedCommunityName,
    @Default("") String selectedCommunityIconUrl
}) = _HomeCommunitiesState;
}

class HomeCommunitiesController extends StateNotifier<HomeCommunitiesState> with LocatorMixin {
  HomeCommunitiesController({
    required this.context,
    required this.homeStore,
  }) : super(const HomeCommunitiesState());
  final BuildContext context;
  final HomeStore homeStore;

  @override
  void initState() async{
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _fromJson(communityData) {
    final data = jsonDecode(communityData);
  }

  _toJson({required String communityName, required String commIconUrl}) {
    return jsonEncode({"communityName": communityName, "commIconUrl": commIconUrl});
  }
//NOTE: 選択されたコミュニティ名をpreferenceに保存する
  void selectCommunity(Community selectedCommunity) {
    homeStore.selectCommunity(Community.toJson(community: selectedCommunity));
    state = state.copyWith(
      selectedCommunityName: selectedCommunity.name,
      selectedCommunityIconUrl: selectedCommunity.commIconUrl
    );
  }
}