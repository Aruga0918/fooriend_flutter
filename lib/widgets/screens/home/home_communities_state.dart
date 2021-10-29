import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/community.dart';
import 'package:fooriend/models/entities/token.dart';
import 'package:fooriend/models/entities/user_community.dart';
import 'package:fooriend/models/repositories/community_repository.dart';
import 'package:fooriend/models/repositories/user_repository.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_communities_state.freezed.dart';

@freezed
class HomeCommunitiesState with _$HomeCommunitiesState {
  const factory HomeCommunitiesState({
    @Default("") String selectedCommunityName,
    @Default("") String selectedCommunityIconUrl,
    @Default([]) List<UserCommunity> belongingCommunities,
    @Default([]) List<bool> isJoinedList,
    @Default(false) bool isLogin,
}) = _HomeCommunitiesState;
}

class HomeCommunitiesController extends StateNotifier<HomeCommunitiesState> with LocatorMixin {
  HomeCommunitiesController({
    required this.context,
    required this.homeStore,
    required this.userStore,
    required this.belongingCommunities
  }) : super(const HomeCommunitiesState());
  final BuildContext context;
  final HomeStore homeStore;
  final UserStore userStore;
  final List<UserCommunity> belongingCommunities;
  final userRepository = UserRepository(
      dio: AppDio.defaults()
  );
  final communityRepository = CommunityRepository(
      dio: AppDio.defaults()
  );

  @override
  void initState() async{
    super.initState();
    // _loadCommunities();
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

  // _loadCommunities() async{
  //   if (userStore.isLogin.value) {
  //     // final userCommunities = await userRepository.getUserCommunities();
  //     List<bool> isJoinList = [false];
  //     belongingCommunities.removeAt(0);
  //     List<bool> update =  await _isJoined(belongingCommunities: belongingCommunities, isJoinList: isJoinList);
  //     print('belongings: $belongingCommunities isJoinList: $update');
  //     state = state.copyWith(
  //       // belongingCommunities: userCommunities,
  //       isJoinedList: update
  //     );
  //   } else {
  //     state = state.copyWith(belongingCommunities: [UserCommunity.public]);
  //   }
  // }
  //
  // Future<List<bool>> _isJoined({required List<UserCommunity> belongingCommunities, required List<bool> isJoinList}) async {
  //   belongingCommunities.forEach(
  //           (community) async{
  //         final detail = await communityRepository.getCommunity(communityId: community.id);
  //         detail.members.forEach(
  //                 (element) {
  //               print('${element["id"]} ${Token.fromJson(json.decode(userStore.tokenData.value)).userId}');
  //               if (element["id"] == Token.fromJson(json.decode(userStore.tokenData.value)).userId) {
  //                 isJoinList.add(element["is_join"]);
  //               }
  //             });
  //       }
  //   );
  //   print('_isJoinList: $isJoinList');
  //   return isJoinList;
  // }
}