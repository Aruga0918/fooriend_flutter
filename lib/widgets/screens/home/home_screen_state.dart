import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fooriend/models/entities/community.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:fooriend/utils/mock_constant.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default("") String selectedCommunityName,
    @Default(MockConstant.ACommunityImage) String selectedCommunityIconUrl,
    @Default([]) List<Community> belongCommunities
  }) = _HomeScreenState;
}

class HomeScreenController extends StateNotifier<HomeScreenState> with LocatorMixin {
  HomeScreenController({
    required this.context,
    required this.homeStore,
  }) : super(const HomeScreenState());
  final BuildContext context;
  final HomeStore homeStore;

  @override
  void initState() async{
    super.initState();
    homeStore.setCommunities(Community.mockCommunities.map((data) => Community.toJson(community: data)).toList());
    _loadCommunities();
    _loadSelectCommunity();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _fromJson(jsonData) {
    final data = jsonDecode(jsonData);
    return data;
  }

  _loadCommunities() {
    //TODO:今はモックを入れているのであとで直す
    state = state.copyWith(belongCommunities: Community.mockCommunities);
  }

  _loadSelectCommunity() {

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

  void selectCommunity(String communityName) {
    state = state.copyWith(selectedCommunityName: communityName);
  }
}