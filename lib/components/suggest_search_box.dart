import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/models/entities/rough_user.dart';
import 'package:fooriend/widgets/screens/home/children/user_icon.dart';

class SuggestSearchBox extends StatelessWidget {
  const SuggestSearchBox({
    Key? key,
    required this.allList,
    required this.selectedList,
    required this.searchController,
    required this.onSelect,
  }) : super(key: key);
  final TextEditingController searchController;
  final List<RoughUser> allList;
  final List<RoughUser> selectedList;
  final Function(RoughUser) onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: searchController,
          decoration: InputDecoration(
              labelText: "ユーザー検索"
          ),
        ),
        Visibility(
          visible: true,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 0.5,
                  color: Colors.grey
                ),
                // boxShadow: [BoxShadow(
                //   offset:Offset(0,5),
                //   spreadRadius: 0,
                //   blurRadius: 20.0
                // )]
              ),
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.5
              ),
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: allList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: ListTile(
                        leading: UserIcon(),
                        title: Text(allList[index].name),
                        subtitle: Text(allList[index].uid),
                        trailing: allList[index].isSelected
                        ? Icon(Icons.check_box, color: Colors.deepOrange)
                        : Icon(Icons.check_box_outline_blank),
                      ),
                      onTap: () => onSelect(allList[index]),
                    );
                  }
              ),
            )
        )
      ],
    );
  }
}
