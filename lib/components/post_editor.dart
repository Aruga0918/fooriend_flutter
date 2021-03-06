import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fooriend/components/post_editor_state.dart';
import 'package:fooriend/models/entities/category.dart';
import 'package:fooriend/models/entities/category_shop.dart';
import 'package:fooriend/models/entities/menu.dart';
import 'package:fooriend/models/stores/user_store.dart';
import 'package:fooriend/widgets/screens/home/children/user_icon.dart';
import 'package:provider/provider.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class PostEditor extends StatelessWidget {
  const PostEditor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<PostEditorController, PostEditorState>(
        create: (_) => PostEditorController(userStore: UserStore()),
        builder: (context, _) {
          final categoryList = context.select<PostEditorState, List<Category>>((state) => state.categoryList);
          final shopList = context.select<PostEditorState, List<CategoryShop>>((state) => state.shopList);
          final menuList = context.select<PostEditorState, List<Menu>>((state) => state.menuList);
          final _selectedCategory = context.select<PostEditorState, Category>((state) => state.selectedCategory);
          final _selectedShop = context.select<PostEditorState, CategoryShop>((state) => state.selectedShop);
          final _selectedMenus = context.select<PostEditorState, List<Menu?>>((state) => state.selectedMenus);
          final _items = menuList
              .map((menu) => MultiSelectItem<Menu>(menu, menu.name))
              .toList();

          return Scaffold(
            appBar: AppBar(
              actions: [
                InkWell(
                  child: Icon(Icons.send),
                  onTap: () => context.read<PostEditorController>().post(),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_selectedCategory.name),
                            Spacer(),
                            PopupMenuButton<Category>(
                              initialValue: _selectedCategory,
                              itemBuilder: (BuildContext context) {
                                return categoryList.map(
                                        (category) {
                                      return PopupMenuItem(
                                        child: Text(category.name),
                                        value: category,
                                      );
                                    }
                                ).toList();
                              },
                              onSelected: (Category category) => context
                                  .read<PostEditorController>()
                                  .selectCategory(category: category),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Text(
                                  _selectedShop.name,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Spacer(),
                            PopupMenuButton<CategoryShop>(
                              initialValue: _selectedShop,
                              itemBuilder: (BuildContext context) {
                                return shopList.map(
                                        (shop) {
                                      return PopupMenuItem(
                                        child: Text(shop.name),
                                        value: shop,
                                      );
                                    }
                                ).toList();
                              },
                              onSelected: (CategoryShop shop) => context
                                  .read<PostEditorController>()
                                  .selectShop(shop: shop),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width *0.75,
                        child: MultiSelectDialogField(
                          items: _items,
                          chipDisplay: MultiSelectChipDisplay(
                            items: _selectedMenus.map((menu) => MultiSelectItem<Menu?>(menu, menu!.name)).toList(),
                          ),
                          title: Text("??????????????????"),
                          selectedColor: Colors.deepOrange,
                          // decoration: BoxDecoration(
                          //   color: Colors.deepOrange.withOpacity(0.1),
                          //   borderRadius: BorderRadius.all(Radius.circular(40)),
                          //   border: Border.all(
                          //     color: Colors.deepOrange,
                          //     width: 2,
                          //   ),
                          // ),
                          buttonIcon: Icon(
                            Icons.food_bank,
                            // color: Colors.blue,
                          ),
                          buttonText: Text(
                            "??????????????????",
                            style: TextStyle(
                              // color: Colors.blue[800],
                              fontSize: 16,
                            ),
                          ),
                          onConfirm: (List<Menu?> results) => context
                              .read<PostEditorController>()
                              .selectMenu(menus: results != [] ? results : [Menu.mock]),
                        ),
                      ),

                      Text("????????????"),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          maxLines: 10,
                          cursorColor: Colors.deepOrange,
                          controller: context
                              .read<PostEditorController>()
                              .commentEditingController,
                        ),
                      )
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
