import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fooriend/models/stores/home_store.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default("") String selectedCommunityName,
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
    homeStore.setGeneral();
    homeStore.selectedCommunity.listen((value) async{
      final communityData = await _fromJson(value);
      state = state.copyWith(selectedCommunityName: communityData["communityName"]);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  _fromJson(jsonData) {
    final data = jsonDecode(jsonData);
    return data;
  }

  void selectCommunity(String communityName) {
    state = state.copyWith(selectedCommunityName: communityName);
  }
}