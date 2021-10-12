import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ----------------------------------------
// Twitterのプロフィール画面みたいなやつ
// ----------------------------------------
class StickyTabScreen extends StatelessWidget {
  // 引数
  /* タブヘッダー      */ final List<Widget> tabHeader;
  /* タブバー         */ final TabBar tabBar;
  /* タブボディー      */ final TabBarView tabBarView;
  /* スクロール       */ final bool pinned;

  // コンストラクタ
  StickyTabScreen({
    Key? key,
    required this.tabHeader,
    required this.tabBar,
    required this.tabBarView,
    this.pinned = true}
      ) : assert(tabHeader != null),
        assert(tabBar != null),
        assert(tabBarView != null),
        assert(tabBar.tabs.length == tabBarView.children.length),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                    tabHeader
                ),
              ),
              SliverPersistentHeader(
                pinned: pinned,
                delegate: _StickyTabBarDelegate(
                    tabBar
                ),
              ),
            ];
          },
          body: tabBarView
      ),
    );
  }
}

class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _StickyTabBarDelegate(this.tabBar);

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent,
      ) {
    return Container(
        color: Colors.white,
        child: tabBar,
        alignment: Alignment.center,
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}