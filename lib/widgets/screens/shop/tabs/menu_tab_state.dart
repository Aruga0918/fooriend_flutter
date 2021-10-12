import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/models/entities/ranking.dart';
import 'package:fooriend/models/entities/shop.dart';
import 'package:fooriend/models/repositories/post_repository.dart';
import 'package:fooriend/models/repositories/ranking_repository.dart';
import 'package:fooriend/models/repositories/shop_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'menu_tab_state.freezed.dart';

@freezed
class MenuTabState with _$MenuTabState  {
  const factory MenuTabState({
    @Default([]) List<dynamic> menuList,
    @Default(false) bool isLoaded,
  }) = _MenuTabState;
}

class MenuTabController extends StateNotifier<MenuTabState> with LocatorMixin {
  MenuTabController({required this.shopId}) : super(const MenuTabState());
  final int shopId;
  late final shopRepository = ShopRepository(
    dio: AppDio.defaults(),
  );
  @override
  void initState() async{
    super.initState();
    final list = await shopRepository.getShopData(shopId: shopId);
    state = state.copyWith(
        menuList: list.menu,
        isLoaded: true
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
