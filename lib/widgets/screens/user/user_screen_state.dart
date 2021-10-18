import 'dart:convert';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/token.dart';
import 'package:fooriend/models/repositories/sign_repository.dart';
import 'package:fooriend/models/repositories/user_repository.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'user_screen_state.freezed.dart';

@freezed
class UserScreenState with _$UserScreenState  {
  const factory UserScreenState({
    @Default(false) bool isLogin,
    @Default("") String username,
    @Default(0) int userId,
    @Default("") String uid,
    @Default("") String userIcon,
    @Default("") String profile,
  }) = _UserScreenState;
}

class UserScreenController extends StateNotifier<UserScreenState> with LocatorMixin {
  UserScreenController({required this.userStore}) : super(const UserScreenState());
  late final signRepository = SignRepository(
    dio: AppDio.defaults(),
  );
  late final userRepository = UserRepository(
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
    userStore.tokenData.listen((value) async{
      if (value.isNotEmpty) {
        final tokenData = Token.fromJson(json.decode(value));
        final userData = await userRepository.getUserData(userId: tokenData.userId);
        state  = state.copyWith(
          isLogin: true,
          username: userData.name,
          uid: userData.uid,
          userIcon: userData.iconUrl,
          profile: userData.profile
        );
      } else {
        state = state.copyWith(isLogin: false);
      }
    });
  }

  void logOut() {
    userStore.logOut();
  }
}
