import 'dart:convert';

class Post {
  final int postId;
  final String userName;
  final int userId;
  final String uid;
  // final String userIconUrl;
  final int shopId;
  final String shopName;
  final String shopIconUrl;
  final String message;
  final String createdAt;
  final List<dynamic> menu;

  Post({
    required this.postId,
    required this.userName,
    required this.userId,
    required this.uid,
    required this.shopIconUrl,
    required this.shopId,
    required this.shopName,
    required this.message,
    // required this.userIconUrl,
    required this.createdAt,
    required this.menu
  });


  static Post fromJson(data) {
    final post = Post(
      postId: data["post_id"],
      userName: data["user_name"],
      userId: data["user_id"],
      uid: data["uid"],
      shopIconUrl: data["shop_icon_url"],
      shopId: data["shop_id"],
      shopName: data["shop_name"],
      message: data["message"],
      menu: data["menu"],
      createdAt: data["created_at"],
      // userIconUrl: data["user_icon_url"]
    );
    return post;
  }

  static String toJson({required Post post}) {
    return json.encode({
      "post_id": post.postId.toString(),
      "user_name": post.userName,
      "user_id": post.userId.toString(),
      "uid": post.uid,
      "shop_icon_url": post.shopIconUrl,
      "shop_id": post.shopId.toString(),
      "shop_name": post.shopName,
      "message": post.message,
      "created_at": post.createdAt,
      // "user_icon_url": post.userIconUrl,
      "menu": post.menu
    });
  }
}

//NOTE
//{
//     "post_id" : 投稿のid,
//     "user_name" : ユーザーの名前,
//     "user_id" : (数字の方の)ユーザーid,
//     "uid" : (文字列の方の)ユーザーid,
//     "user_icon_url" : ユーザーiconのurl
//     "shop_id" : ショップのid,
//     "shop_name" : ショッピの名前
//     "shop_icon_url" : ショップiconのurl
//     "message" : 投稿のコメント,
//     "menu" : メニューのリスト [
//         {
//             "menu_id" : menuのid
//             "name": メニューの名前
//             "price" : 価格
//         }
//         ...
//     ],
//     "created_at" : 投稿時間
// }