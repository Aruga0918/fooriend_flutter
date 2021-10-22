import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/post_editor_state.dart';
import 'package:fooriend/components/suggest_search_box.dart';
import 'package:fooriend/models/entities/category.dart';
import 'package:fooriend/models/entities/category_shop.dart';
import 'package:fooriend/models/entities/community.dart';
import 'package:fooriend/models/entities/menu.dart';
import 'package:fooriend/models/entities/rough_user.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/widgets/screens/home/children/user_icon.dart';
import 'package:provider/provider.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:search_choices/search_choices.dart';

import 'community_editor_state.dart';

class CommunityEditor extends StatelessWidget {
  const CommunityEditor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<CommunityEditorController, CommunityEditorState>(
        create: (_) => CommunityEditorController(),
        builder: (context, _) {
          final _selectedUsers = context.select<CommunityEditorState, List<RoughUser>>((state) => state.inviteList);
          final _allUsers = context.select<CommunityEditorState, List<RoughUser>>((state) => state.allUserList);

          return Scaffold(
            appBar: AppBar(
              actions: [
                InkWell(
                  child: Icon(Icons.send),
                  onTap: () async{
                    final isSuccess = context.read<CommunityEditorController>().sendCommunity();
                    isSuccess
                    ? showDialog(
                        context: context,
                        builder: (context) {
                      return SimpleDialog(
                        title: Text("作成しました！"),
                        children: [
                          SimpleDialogOption(
                            onPressed: () => Navigator.pop(context),
                            child: Text("閉じる"),
                          ),
                        ],
                      );
                    },
                    )
                   : showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: Text("失敗しました"),
                          children: [
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context),
                              child: Text("閉じる"),
                            ),
                          ],
                        );
                      },
                    );
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 24.0, 8.0),
                  child: UserIcon(),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: TextField(
                          controller: context.read<CommunityEditorController>().nameEditingController,
                          decoration: InputDecoration(
                              labelText: "コミュニティ名",
                              fillColor: Colors.deepOrange
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: TextField(
                          maxLines: 3,
                          cursorColor: Colors.deepOrange,
                          controller: context
                              .read<CommunityEditorController>()
                              .descriptionEditingController,
                          decoration: InputDecoration(
                            labelText: "説明",
                            fillColor: Colors.deepOrange
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width *0.75,
                        child: SuggestSearchBox(
                            allList: _allUsers,
                            selectedList: _selectedUsers,
                            searchController: context
                                .read<CommunityEditorController>()
                                .searchController,
                            onSelect: context
                                .read<CommunityEditorController>()
                                .selectUser
                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }
    );
  }
}
