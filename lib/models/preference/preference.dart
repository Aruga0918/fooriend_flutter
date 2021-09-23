import 'package:enum_to_string/enum_to_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PreferenceKey {
  //ユーザーID
  userId,
  //ユーザーネーム
  userName,
  //ユーザー所属コミュニティリスト
  communityList,
  //選択表示されているコミュニティ
  selectedCommunity,
}

class Preference {
  Future<String> getString(PreferenceKey key) async{
    final preference = await SharedPreferences.getInstance();
    return preference.getString(EnumToString.convertToString(key)) ?? '';
  }

  Future<void> setString({required PreferenceKey key, required String value}) async{
    final preference = await SharedPreferences.getInstance();
    preference.setString(EnumToString.convertToString(key), value);
  }

  Future<void> setStringList(PreferenceKey key, List<String> value) async{
    final preference = await SharedPreferences.getInstance();
    preference.setStringList(EnumToString.convertToString(key), value);
  }

  Future<List<String>> getStringList(PreferenceKey key) async{
    final preference = await SharedPreferences.getInstance();
    return preference.getStringList(EnumToString.convertToString(key)) ?? [];
  }

  Future<void> setBool(PreferenceKey key, bool value) async{
    final preference = await SharedPreferences.getInstance();
    preference.setBool(EnumToString.convertToString(key), value);
  }

  Future<bool?> getBool(PreferenceKey key) async{
    final preference = await SharedPreferences.getInstance();
    return preference.getBool(EnumToString.convertToString(key));
  }

  Future<void> addString({required PreferenceKey key, required String value}) async{
    final preference = await SharedPreferences.getInstance();
    final list = preference.getStringList(EnumToString.convertToString(key)) ?? [];
    list.add(value);
    await preference.setStringList(EnumToString.convertToString(key), list);
  }

  Future<void> insertString({
    required PreferenceKey key,
    required String value,
    required int index
  }) async{
    final preference = await SharedPreferences.getInstance();
    final list = preference.getStringList(EnumToString.convertToString(key)) ?? [];
    list.insert(index, value);
    await preference.setStringList(EnumToString.convertToString(key), list);
  }

  Future<void> removeString({required PreferenceKey key, required String value}) async{
    final preference = await SharedPreferences.getInstance();
    final list = preference.getStringList(EnumToString.convertToString(key)) ?? [];
    list.remove(value);
    await preference.setStringList(EnumToString.convertToString(key), list);
  }
}