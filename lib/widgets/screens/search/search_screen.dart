import 'package:flutter/material.dart';
import 'package:fooriend/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryImages = [
      Assets.images.foodJp,
      Assets.images.foodWes,
      Assets.images.foodIta,
      Assets.images.foodCn,
      Assets.images.foodRamen,
      Assets.images.foodCafe,
    ];
    return Column(
      children: [
        Container(
          child: GridView.builder(
            itemCount: categoryImages.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.4,
                  alignment: Alignment.center,
                  child: Text(
                      "カテゴリ",
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
        ),
      ],
    );
  }
}
