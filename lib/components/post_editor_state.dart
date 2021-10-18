import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/category.dart';
import 'package:fooriend/models/entities/category_shop.dart';
import 'package:fooriend/models/entities/menu.dart';
import 'package:fooriend/models/entities/shop.dart';
import 'package:fooriend/models/entities/token.dart';
import 'package:fooriend/models/repositories/category_repository.dart';
import 'package:fooriend/models/repositories/post_repository.dart';
import 'package:fooriend/models/repositories/shop_repository.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:fixnum/fixnum.dart';

part 'post_editor_state.freezed.dart';

@freezed
class PostEditorState with _$PostEditorState  {
  const factory PostEditorState({
    @Default([]) List<Category> categoryList,
    @Default([]) List<CategoryShop> shopList,
    @Default([]) List<Menu> menuList,
    @Default(Category.mock) Category selectedCategory,
    @Default(CategoryShop.mock) CategoryShop selectedShop,
    @Default([]) List<Menu?> selectedMenus
}) = _PostEditorState;}

class PostEditorController extends StateNotifier<PostEditorState> with LocatorMixin {
  PostEditorController({required this.userStore}) : super(const PostEditorState());
  final categoryRepository = CategoryRepository(
      dio: AppDio.defaults()
  );
  final shopRepository = ShopRepository(
      dio: AppDio.defaults()
  );
  final postRepository = PostRepository(
      dio: AppDio.defaults()
  );
  final UserStore userStore;
  final commentEditingController = TextEditingController();


  @override
  void initState() async{
    super.initState();
    final categories = await categoryRepository.getCategories();
    state = state.copyWith(categoryList: categories.map((value) => Category.fromJson(value)).toList());
  }

  //[
//     {
//         "id" : カテゴリid
//         "name" : カテゴリ名
//         "shop_cnt" : そのカテゴリに属する店の数
//     }
// ]

  @override
  void dispose() {
    super.dispose();
  }

  void selectCategory({required Category category}) async{
    final shops = await categoryRepository.getCategoryShops(categoryId: category.id);
    state = state.copyWith(shopList: shops, selectedCategory: category);
  }
  //{
//     "id" : shop_id
//     "icon_url" : shop iconのurl
//     "name" : shop名
//     "latitude" : 緯度
//     "longitude" : 経度
//     "description" : 説明
//     "address" : 住所
//     "menu" : メニューのリスト [
//         {
//             "menu_id" : menuのid
//             "name": メニューの名前
//             "price" : 価格
//         }
//         ...
//     ],
// }

  void selectShop({required CategoryShop shop}) async{
    final shopData = await shopRepository.getShopData(shopId: shop.id);
    state = state.copyWith(
      menuList: shopData.menu.map((menu) => Menu.fromJson(menu)).toList(),
      selectedShop: shop
    );
  }

  void selectMenu({required List<Menu?> menus}) {
    state = state.copyWith(selectedMenus: menus);
    print(state.selectedMenus);
  }

  void post() {
    final userId = Token.fromJson(json.decode(userStore.tokenData.value)).userId;
    final Map<String, dynamic> params = {
      "user_id": userId,
      "shop_id": state.selectedShop.id,
      "menus": state.selectedMenus.map((menu) => menu!.id).toList(),
      "message": commentEditingController.text
    };
    postRepository.createPost(
        userId: userId,
        shopId: params["shop_id"],
        menu: params["menus"],
        message: params["message"]
    );
  }
}
