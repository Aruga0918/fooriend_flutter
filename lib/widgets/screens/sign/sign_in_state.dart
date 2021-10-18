import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/ranking.dart';
import 'package:fooriend/models/repositories/ranking_repository.dart';
import 'package:fooriend/models/repositories/sign_repository.dart';
import 'package:fooriend/models/stores/user_store.dart';
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
    @Default(false) bool isSignUp,
  }) = _SignInScreenState;
}

class SignInScreenController extends StateNotifier<SignInScreenState> with LocatorMixin {
  SignInScreenController({required this.userStore}) : super(const SignInScreenState());
  late final signRepository = SignRepository(
      dio: AppDio.defaults(),
  );
  late final TextEditingController userIdController ;
  late final TextEditingController passwordController;
  late final TextEditingController userNameController;
  final UserStore userStore;


  @override
  void initState() async{
    super.initState();
    userIdController = TextEditingController();
    passwordController = TextEditingController();
    userNameController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void visible() {
    state = state.copyWith(isObscure: !state.isObscure);
  }

  void toSingUp() {
    state = state.copyWith(isSignUp: !state.isSignUp);
  }

  void logIn({required String uid, required String passWord}) async{
    final tokenData = await signRepository.signing(uid: uid, password: passWord);
    userStore.setToken(token: tokenData);

  }

  void signUp({required String uid, required String passWord, required String userName}) async{
    final tokenData = await signRepository.signUp(userName: userName, uid: uid, password: passWord);
    userStore.setToken(token: tokenData);
  }

  void logOut() {
    userStore.logOut();
  }
}
