import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/repositories/category_repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'search_screen_state.freezed.dart';
//flutter pub run build_runner build --delete-conflicting-outputs
@freezed
class SearchScreenState with _$SearchScreenState {
  const factory SearchScreenState({
    @Default([]) List<String> categoryList,
    @Default(false) bool isLoaded,
}) = _SearchScreenState;
}

class SearchScreenController extends StateNotifier<SearchScreenState> with LocatorMixin {
  SearchScreenController() : super(const SearchScreenState());
  final categoryRepository = CategoryRepository(dio: AppDio.defaults());
  @override
  void initState() async{
    super.initState();

    final categoryList = await _getCategoryName();
    state = state.copyWith(
      categoryList: categoryList,
      isLoaded: true
    );
  }


  //NOTE: カテゴリリスト＝＞　1: 居酒屋、2: カフェ、3: ラーメン、4: イタリアン、5: 中華、6: 洋食、7: 和食
  _getCategoryName() async{
    final allData = await categoryRepository.getCategories();
    final List<String> categoryList = [];
    allData.forEach((name) => categoryList.add(name["name"]));
    categoryList.removeAt(0);
    return categoryList;
 }
}