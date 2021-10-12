import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/models/entities/ranking.dart';
import 'package:fooriend/models/repositories/post_repository.dart';
import 'package:fooriend/models/repositories/ranking_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'post_tab_state.freezed.dart';

@freezed
class PostTabState with _$PostTabState  {
  const factory PostTabState({
    @Default([]) List<Post> postList,
    @Default(false) bool isLoaded,
  }) = _PostTabState;
}

class PostTabController extends StateNotifier<PostTabState> with LocatorMixin {
  PostTabController({required this.shopId}) : super(const PostTabState());
  final int shopId;
  late final postRepository = PostRepository(
      dio: AppDio.defaults(),
  );
  @override
  void initState() async{
    super.initState();
    final list = await postRepository.getShopPost(shopId: shopId);
    state = state.copyWith(
        postList: list,
        isLoaded: true
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
