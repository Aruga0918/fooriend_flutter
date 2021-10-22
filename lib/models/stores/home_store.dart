
import 'package:fooriend/utils/const.dart';
import 'package:rxdart/rxdart.dart';
import 'package:fooriend/models/preference/preference.dart';

class HomeStore {
  static final HomeStore _store = HomeStore._instanitate();
  factory HomeStore() => _store;
  HomeStore._instanitate();

  final communityList = BehaviorSubject<List<String>>.seeded([]);
  final selectedCommunity = BehaviorSubject<String>.seeded("");
  late Preference preference;

  void inject(Preference preference) {
    this.preference = preference;
  }

  void setCommunities(List<String> communityList) async{
    await preference.setStringList(PreferenceKey.communityList, communityList);
  }

  //TODO: どこかでユーザーが所属しているコミュニティ情報をとってくる関数を作成

  void loadCommunities() async{
    final allCommunities = await preference.getStringList(PreferenceKey.communityList);
    communityList.sink.add(allCommunities);
  }

  void setGeneral() async{
    await preference.setString(key: PreferenceKey.selectedCommunity, value: Constant.general);
  }

  void selectCommunity(String community) async{
    await preference.setString(key: PreferenceKey.selectedCommunity, value: community);
    selectedCommunity.sink.add(community);
    // selectedCommunity.value = await preference.getString(PreferenceKey.selectedCommunity);
  }

  void loadSelected() async{
    final community = await preference.getString(PreferenceKey.selectedCommunity);
    selectedCommunity.sink.add(community);
  }

  //communityData is json format such like {"communityName": ~~, "communityId": ~~}
  void joinCommunity({required String communityData}) async{
    if (communityData.isEmpty || communityList.value.contains(communityData)) return;
    await preference.addString(key: PreferenceKey.communityList, value: communityData);
    final allCommunities = await preference.getStringList(PreferenceKey.communityList);
    communityList.sink.add(allCommunities);
  }

  void leaveCommunity({required String communityData}) async{
    if (communityData.isEmpty || !communityList.value.contains(communityData)) return;
    await preference.removeString(key: PreferenceKey.communityList, value: communityData);
    final allCommunities = await preference.getStringList(PreferenceKey.communityList);
    communityList.sink.add(allCommunities);
  }
}