import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/models/entities/ranking.dart';
import 'package:fooriend/models/entities/token.dart';
import 'package:fooriend/models/repositories/post_repository.dart';
import 'package:fooriend/models/repositories/ranking_repository.dart';
import 'package:fooriend/models/stores/user_store.dart';
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
  UserPostsController({
    required this.userId,
    required this.userStore
  }) : super(const UserPostsState());
  final int userId;
  late final postRepository = PostRepository(
    dio: AppDio.defaults(),
  );
  final UserStore userStore;

  @override
  void initState() async{
    super.initState();
    _load();
  }

  void _load() {
    userStore.tokenData.listen((value) async{
        final tokenData = Token.fromJson(json.decode(value));
        final list = await postRepository.getUserPost(userId: tokenData.userId);
        state = state.copyWith(
            postList: list,
            isLoaded: true
        );
    });
  }

  Future<void> _delete({required Post post, required BuildContext context}) async {
    showDialog(
        context: context,
        builder:(_) {
          return AlertDialog(
            title: Text("投稿削除"),
            content: Text("この投稿を削除しますか？"),
            actions: [
              SimpleDialogOption(
                child: Text("キャンセル"),
                onPressed: () => Navigator.pop(_),
              ),
              SimpleDialogOption(
                child: Text("削除"),
                onPressed: () => postRepository.deletePost(postId: post.postId)
              ),
            ],
          );
        },
    );
  }

  Future<void> _edit({required Post post, required BuildContext context}) async {
    showDialog(
      context: context,
      builder:(_) {
        return AlertDialog(
          title: Text("投稿編集"),
          content: Text("この投稿を編集しますか？"),
          actions: [
            SimpleDialogOption(
              child: Text("キャンセル"),
              onPressed: () => Navigator.pop(_),
            ),
            SimpleDialogOption(
                child: Text("編集する"),
                onPressed: () async{
                  await postRepository.deletePost(postId: post.postId);
                  Navigator.pop(_);
                }
            ),
          ],
        );
      },
    );
  }

  void popUpAction({required Post post, required String action, required BuildContext context}) async{
    if (action == "編集") {
      await _edit(post: post, context: context);
    }
    if (action == "削除") {
      await _delete(post: post, context: context);
      final tokenData = Token.fromJson(json.decode(userStore.tokenData.value));
      final list = await postRepository.getUserPost(userId: tokenData.userId);
      state = state.copyWith(
          postList: list,
          isLoaded: true
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
