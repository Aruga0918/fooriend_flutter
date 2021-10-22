import 'package:fooriend/models/api/app_dio.dart';
import 'package:fooriend/models/entities/post.dart';
import 'package:fooriend/models/repositories/post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_timeline_state.freezed.dart';

@freezed
class HomeTimeLineState with _$HomeTimeLineState  {
  const factory HomeTimeLineState({
    @Default([]) List<Post> postList,
    @Default(false) bool isLoaded,
  }) = _HomeTimeLineState;
}

class HomeTimeLineController extends StateNotifier<HomeTimeLineState> with LocatorMixin {
  HomeTimeLineController({required this.communityId}) : super(const HomeTimeLineState());
  final int communityId;
  late final postRepository = PostRepository(dio: AppDio.defaults(),);
  @override
  void initState() async{
    if (mounted) {
      await postRepository.getCommunityPost(communityId: communityId).then(
              (list) => state = state.copyWith(
                  postList: list,
                isLoaded: true
              )
      );
      super.initState();
    }
  }

  @override
  void dispose() {
    if (state.isLoaded) {
      super.dispose();
    }
  }
}
