import 'package:fooriend/models/entities/token.dart';
import 'package:fooriend/models/entities/user.dart';
import 'package:rxdart/rxdart.dart';
import 'package:fooriend/models/preference/preference.dart';

class UserStore {
  static final UserStore _store = UserStore._instanitate();
  factory UserStore() => _store;
  UserStore._instanitate();

  // final accessToken = BehaviorSubject<String>.seeded("");
  // final refreshToken = BehaviorSubject<String>.seeded("");
  // final userName = BehaviorSubject<String>.seeded("");
  // final userId = BehaviorSubject<int>.seeded(0);
  // final uid = BehaviorSubject<String>.seeded("");
  final userData = BehaviorSubject<String>.seeded("");
  final tokenData = BehaviorSubject<String>.seeded("");
  final isLogin = BehaviorSubject<bool>.seeded(false);
  late Preference preference;

  void inject(Preference preference) {
    this.preference = preference;
  }

  void setUser({required User user}) async{
    // await preference.setString(key: PreferenceKey.userName, value: userName);
    // await preference.setString(key: PreferenceKey.uid, value: uid);
    // await preference.setInt(key: PreferenceKey.userId, value: userId);
    await preference.setString(key: PreferenceKey.userData, value: User.toJson(user: user));
    _loadUser();
  }

  void setToken({required Token token}) async{
    await preference.setString(key: PreferenceKey.accessToken, value: token.accessToken);
    await preference.setString(key: PreferenceKey.refreshToken, value: token.refreshToken);
    await preference.setString(key: PreferenceKey.tokenData, value: Token.toJson(token: token));
    await preference.setBool(PreferenceKey.isLogin, true);
    isLogin.sink.add(true);
    _loadToken();
  }

  void refreshToken({
  required String accessToken, required Token beforeToken
  }) async{
    final newToken = Token.refresh(accessToken: accessToken, beforeToken: beforeToken);
    await preference.setString(key: PreferenceKey.accessToken, value: accessToken);
    await preference.setString(key: PreferenceKey.tokenData, value: Token.toJson(token: newToken));
    _loadToken();
  }

  //TODO: ??????????????????????????????????????????????????????????????????????????????????????????????????????

  void _loadUser() async{
    final jsonUser = await preference.getString(PreferenceKey.userData);
    userData.sink.add(jsonUser);
  }

  void _loadToken() async{
    final jsonToken = await preference.getString(PreferenceKey.tokenData);
    tokenData.sink.add(jsonToken);
  }

  void logOut() async{
    final jsonToken = tokenData.value;
    final jsonUser = userData.value;
    await preference.clearString(key: PreferenceKey.tokenData);
    tokenData.sink.add("");
    await preference.clearString(key: PreferenceKey.userData);
    userData.sink.add("");
    await preference.setBool(PreferenceKey.isLogin, false);
    isLogin.sink.add(false);
  }
}