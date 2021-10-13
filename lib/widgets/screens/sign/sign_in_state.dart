import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/ranking.dart';
import 'package:fooriend/models/repositories/ranking_repository.dart';
import 'package:fooriend/models/repositories/sign_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInScreenState with _$SignInScreenState  {
  const factory SignInScreenState({
    @Default("") String userName,
    @Default(0)  int userId,
    @Default("") String uid,
    @Default(true) bool isObscure,
  }) = _SignInScreenState;
}

class SignInScreenController extends StateNotifier<SignInScreenState> with LocatorMixin {
  SignInScreenController() : super(const SignInScreenState());
  late final signRepository = SignRepository(
      dio: AppDio.defaults(),
  );
  late final TextEditingController userIdController ;
  late final TextEditingController passwordController;


  @override
  void initState() async{
    super.initState();
    userIdController = TextEditingController();
    passwordController = TextEditingController();

  }

  @override
  void dispose() {
    super.dispose();
  }

  void visible() {
    state = state.copyWith(isObscure: !state.isObscure);
  }

  void submit({required String uid, required String passWord}) {

  }
}
