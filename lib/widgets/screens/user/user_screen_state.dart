import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/ranking.dart';
import 'package:fooriend/models/repositories/ranking_repository.dart';
import 'package:fooriend/models/repositories/sign_repository.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'user_screen_state.freezed.dart';

@freezed
class UserScreenState with _$UserScreenState  {
  const factory UserScreenState({
    @Default(false) bool isLogin,
  }) = _UserScreenState;
}

class UserScreenController extends StateNotifier<UserScreenState> with LocatorMixin {
  UserScreenController({required this.userStore}) : super(const UserScreenState());
  late final signRepository = SignRepository(
    dio: AppDio.defaults(),
  );

  final UserStore userStore;


  @override
  void initState() async{
    super.initState();
    _isLogin();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _isLogin() {
    userStore.tokenData.listen((value) {
      if (value.isNotEmpty) {
        state  = state.copyWith(isLogin: true);
      } else {
        state = state.copyWith(isLogin: false);
      }
    });
  }

  void logOut() {
    userStore.logOut();
  }
}
