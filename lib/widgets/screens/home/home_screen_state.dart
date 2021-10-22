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
    @Default(0) int selectedCommunityId,
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
    userStore.isLogin.listen((value) {
      if (value) {
        state = state.copyWith(isLogin: true);
        WidgetsBinding.instance!.addPostFrameCallback((_) {
          _loadUserData();
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void watch() {
    print(userStore.isLogin.value);
    print("state: ${state.isLogin}");
    final communityRepository = CommunityRepository(dio: AppDio.defaults());
    print(communityRepository.getCommunity(communityId: state.selectedCommunityId));
  }

  _loadUserData() async{
    final userCommunities = await userRepository.getUserCommunities();
    userCommunities.insert(0, UserCommunity.public);
    print(userCommunities);
    homeStore.selectedCommunity.listen((value) async{
      if (value.isNotEmpty) {
        final communityData = UserCommunity.fromJson(json.decode(value));
        state = state.copyWith(
          selectedCommunityName: communityData.name,
          selectedCommunityIconUrl: communityData.iconUrl,
          selectedCommunityId: communityData.id,
        );
      } else{
        state = state.copyWith(
            belongCommunities: userCommunities,
            isLogin: true
        );
      }
    });
  }


  void logOut() {
    userStore.logOut();
  }
}