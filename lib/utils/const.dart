import 'dart:convert';

import 'package:fooriend/models/entities/category.dart';

class Constant{
  static final general =jsonEncode({"communityName": "general", "communityId": "0" });
  static final category = Category(name: "カテゴリーを選択してください", id: 0);
  static final noImage = "https://thumbs.dreamstime.com/b/aucune-icône-disponible-d-image-appareil-photo-de-plat-illustration-vecteur-132483296.jpg";
}