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

part 'shop_screen_state.freezed.dart';

@freezed
class ShopScreenState with _$ShopScreenState  {
  const factory ShopScreenState({
    @Default(Shop.mock) Shop shopData,
    @Default(false) bool isLoaded
  }) = _ShopScreenState;
}

class ShopScreenController extends StateNotifier<ShopScreenState> with LocatorMixin {
  ShopScreenController({required this.shopId}) : super(const ShopScreenState());
  final int shopId;
  late final shopRepository = ShopRepository(
    dio: AppDio.defaults(),
  );
  @override
  void initState() async{
    super.initState();
    final shop = await shopRepository.getShopData(shopId: shopId);
    state = state.copyWith(
      shopData: shop,
      isLoaded: true
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
