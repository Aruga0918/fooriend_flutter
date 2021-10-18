import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/community.dart';
import 'package:fooriend/models/entities/user_community.dart';
import 'package:fooriend/models/repositories/community_repository.dart';
import 'package:fooriend/models/repositories/user_repository.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/utils/mock_constant.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default("パブリック") String selectedCommunityName,
    @Default(MockConstant.ACommunityImage) String selectedCommunityIconUrl,
    @Default([]) List<UserCommunity> belongCommunities,
    @Default(false) bool isLogin,
  }) = _HomeScreenState;
}

class HomeScreenController extends StateNotifier<HomeScreenState> with LocatorMixin {
  HomeScreenController({
    required this.context,
    required this.homeStore,
    required this.userStore
  }) : super(const HomeScreenState());
  final BuildContext context;
  final HomeStore homeStore;
  final UserStore userStore;
  final userRepository = UserRepository(
      dio: AppDio.defaults()
  );

  @override
  void initState() async{
    super.initState();
    userStore.isLogin.listen(
            (value) {
              if (value) {
                state = state.copyWith(isLogin: true);
                _loadUserData();
              }
            });
    // homeStore.setCommunities(Community.mockCommunities.map((data) => Community.toJson(community: data)).toList());
    // if (userStore.isLogin.value) {
    //   state = state.copyWith(isLogin: true);
    //   _loadUserData();
    // }
  }

  @override
  void dispose() {
    super.dispose();
  }

  _fromJson(jsonData) {
    final data = jsonDecode(jsonData);
    return data;
  }

  void watch() {
    print(userStore.isLogin.value);
    print("state: ${state.isLogin}");
  }

  _loadCommunities() async{
    if (state.isLogin) {
      final userCommunities = await userRepository.getUserCommunities();
      state = state.copyWith(belongCommunities: userCommunities);
    }
  }

  _loadSelectCommunity() {
    if (state.isLogin) {
      homeStore.selectedCommunity.listen((value) async{
        if (value != "") {
          final communityData = await Community.fromJson(value);
          state = state.copyWith(
              selectedCommunityName: communityData.name,
              selectedCommunityIconUrl: communityData.commIconUrl
          );
        }
      });
    }
  }

  _loadUserData() async{
    final userCommunities = await userRepository.getUserCommunities();
    homeStore.selectedCommunity.listen((value) async{
      if (value != "") {
        final communityData = await Community.fromJson(value);
        state = state.copyWith(
            selectedCommunityName: communityData.name,
            selectedCommunityIconUrl: communityData.commIconUrl,
        );
      } else{
        state = state.copyWith(
            belongCommunities: userCommunities,
            isLogin: true
        );
      }
    });
  }

  void selectCommunity(String communityName) {
    state = state.copyWith(selectedCommunityName: communityName);
  }

  void logOut() {
    userStore.logOut();
  }
}