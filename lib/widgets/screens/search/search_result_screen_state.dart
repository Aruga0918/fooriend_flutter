import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/category_shop.dart';
import 'package:fooriend/models/repositories/category_repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'search_result_screen_state.freezed.dart';
//flutter pub run build_runner build --delete-conflicting-outputs
@freezed
class SearchResultScreenState with _$SearchResultScreenState {
  const factory SearchResultScreenState({
    @Default([]) List<CategoryShop> categoryShops,
    @Default(false) bool isLoaded,
}) = _SearchResultScreenState;
}

class SearchResultScreenController extends StateNotifier<SearchResultScreenState> with LocatorMixin {
  SearchResultScreenController({required this.id}) : super(const SearchResultScreenState());
  final categoryRepository = CategoryRepository(dio: AppDio.defaults());
  final int id;
  @override
  void initState() async{
    super.initState();
    final categoryShops = await _getCategoryShop(id);
    state = state.copyWith(
      categoryShops: categoryShops,
      isLoaded: true
    );

  }

  @override
  void dispose() {
    super.dispose();
  }

  //NOTE: カテゴリリスト＝＞　1: 居酒屋、2: カフェ、3: ラーメン、4: イタリアン、5: 中華、6: 洋食、7: 和食
  _getCategoryShop (int id) async{
    return categoryRepository.getCategoryShops(categoryId: id);
  }
}