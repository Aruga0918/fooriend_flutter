import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/rough_user.dart';
import 'package:fooriend/models/entities/user.dart';
import 'package:fooriend/models/repositories/community_repository.dart';
import 'package:fooriend/models/repositories/user_repository.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
part 'community_editor_state.freezed.dart';

@freezed
class CommunityEditorState with _$CommunityEditorState  {
  const factory CommunityEditorState({
    @Default([]) List<RoughUser> inviteList,
    @Default([]) List<RoughUser> allUserList,
    @Default([]) List<String> nameList,
  }) = _CommunityEditorState;}

class CommunityEditorController extends StateNotifier<CommunityEditorState> with LocatorMixin {
  CommunityEditorController() : super(const CommunityEditorState());
  final userRepository = UserRepository(
      dio: AppDio.defaults()
  );
  final communityRepository = CommunityRepository(
      dio: AppDio.defaults()
  );
  final nameEditingController = TextEditingController();
  final descriptionEditingController = TextEditingController();
  final searchController = TextEditingController();


  @override
  void initState() async{
    super.initState();
    _getUsers();
  }

  //[
//     {
//         "name" : ユーザーの名前,
//         "id" : (unsigned intの方の)ユーザーid,
//         "uid" : (文字列の方の)ユーザーid,
//         "icon_url" : アイコンのURL,
//     }
//     ...
// ]

  @override
  void dispose() {
    super.dispose();
  }

  void _getUsers() async{
    final roughUserData = await userRepository.getUsers();
    final nameList = roughUserData.map((user) => user.name).toList();
    state = state.copyWith(
      allUserList: roughUserData,
      nameList: nameList
    );
    print(roughUserData.length);
  }

  void selectUser(RoughUser user) async{
    var currentInviteUsers = List.of(state.inviteList);
    var currentAllUsers = List.of(state.allUserList);
    if (currentInviteUsers.contains(user)) {
      currentInviteUsers.remove(user);
      currentAllUsers[currentAllUsers.indexOf(user)] = RoughUser.unSelect(user: user);
    } else {
      currentAllUsers[currentAllUsers.indexOf(user)] = RoughUser.select(user: user);
      final newUserData = RoughUser.select(user: user);
      currentInviteUsers.add(newUserData);
    }
    WidgetsBinding.instance!.addPostFrameCallback((_) {//全てのWidgetがbuildされてからよぶコールばっく
      state = state.copyWith(
        allUserList: currentAllUsers,
        inviteList: currentInviteUsers,
      );
    });
    // state = state.copyWith(
    //   allUserList: currentAllUsers,
    //   inviteList: currentInviteUsers,
    // );
  }

  bool sendCommunity() {
    final communityName = nameEditingController.text;
    final description = descriptionEditingController.text;
    final List<int> users = state.inviteList.map((user) => user.userId).toList();
    try{
      communityRepository.createCommunity(
          communityName: communityName,
          description: description,
          members: users);
      return true;
    } catch(e) {
      return false;
    }
  }


}
