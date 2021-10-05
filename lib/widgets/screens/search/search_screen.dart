import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:fooriend/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:fooriend/widgets/screens/search/search_result_screen.dart';
import 'package:fooriend/widgets/screens/search/search_screen_state.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SearchScreenController, SearchScreenState>(
      create: (_) => SearchScreenController(),
      builder: (context, _){
        final categoryImages = [
          Assets.images.foodCafe,
          Assets.images.foodRamen,
          Assets.images.foodIta,
          Assets.images.foodCn,
          Assets.images.foodWes,
          Assets.images.foodJp,
        ];
        final isLoaded = context.select<SearchScreenState, bool>((state) => state.isLoaded);
        final categoryList = context.select<SearchScreenState, List<String>>((state) => state.categoryList);
        return Scaffold(
          appBar: AppBar(title: Text("カテゴリ一覧")),
          body: isLoaded
            ? Container(
            child: GridView.builder(
              itemCount: categoryImages.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchResultScreen(
                          id: index + 2,
                          categoryName: categoryList[index],
                        ))
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                    alignment: Alignment.center,
                    child: Text(
                      categoryList[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w100
                      ),
                    ),
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.srcOver
                          ),
                          image: categoryImages[index]
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.5
              ),
            ),
          )
          : Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepOrange))
              ],
            ),
          )
        );
      },
    );
  }
}
