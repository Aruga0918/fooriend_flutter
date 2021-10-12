import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/community.dart';
import 'package:fooriend/models/entities/user_community.dart';
import 'package:fooriend/models/repositories/user_repository.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_communities_state.freezed.dart';

@freezed
class HomeCommunitiesState with _$HomeCommunitiesState {
  const factory HomeCommunitiesState({
    @Default("") String selectedCommunityName,
    @Default("") String selectedCommunityIconUrl,
    @Default([]) List<UserCommunity> belongingCommunities,
    @Default(false) bool isLogin,
}) = _HomeCommunitiesState;
}

class HomeCommunitiesController extends StateNotifier<HomeCommunitiesState> with LocatorMixin {
  HomeCommunitiesController({
    required this.context,
    required this.homeStore,
  }) : super(const HomeCommunitiesState());
  final BuildContext context;
  final HomeStore homeStore;
  final userRepository = UserRepository(
      dio: AppDio.defaults()
  );

  @override
  void initState() async{
    super.initState();
    _loadCommunities();
  }

  @override
  void dispose() {
    super.dispose();
  }

//NOTE: 選択されたコミュニティ名をpreferenceに保存する
  void selectCommunity(UserCommunity selectedCommunity) {
    homeStore.selectCommunity(UserCommunity.toJson(userCommunity: selectedCommunity));
    state = state.copyWith(
      selectedCommunityName: selectedCommunity.name,
      selectedCommunityIconUrl: selectedCommunity.iconUrl
    );
  }

  _loadCommunities() async{
    if (state.isLogin) {
      final userCommunities = await userRepository.getUserCommunities();
      state = state.copyWith(belongingCommunities: userCommunities);
    } else {
      state = state.copyWith(belongingCommunities: [UserCommunity.public]);
    }
  }
}