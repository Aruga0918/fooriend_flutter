import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/models/entities/ranking.dart';
import 'package:fooriend/models/repositories/post_repository.dart';
import 'package:fooriend/models/repositories/ranking_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'user_posts_state.freezed.dart';

@freezed
class UserPostsState with _$UserPostsState  {
  const factory UserPostsState({
    @Default([]) List<Post> postList,
    @Default(false) bool isLoaded,
  }) = _UserPostsState;
}

class UserPostsController extends StateNotifier<UserPostsState> with LocatorMixin {
  UserPostsController({required this.userId}) : super(const UserPostsState());
  final int userId;
  late final postRepository = PostRepository(
    dio: AppDio.defaults(),
  );
  @override
  void initState() async{
    super.initState();
    final list = await postRepository.getUserPost(userId: 15);
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
