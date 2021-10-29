/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get blandTitle =>
      const AssetGenImage('assets/images/bland_title.png');
  AssetGenImage get brandlogo =>
      const AssetGenImage('assets/images/brandlogo.png');
  AssetGenImage get cat => const AssetGenImage('assets/images/cat.jpg');
  AssetGenImage get comment => const AssetGenImage('assets/images/comment.png');
  AssetGenImage get foodCafe =>
      const AssetGenImage('assets/images/food_cafe.png');
  AssetGenImage get foodCn => const AssetGenImage('assets/images/food_cn.png');
  AssetGenImage get foodIta =>
      const AssetGenImage('assets/images/food_ita.png');
  AssetGenImage get foodJp => const AssetGenImage('assets/images/food_jp.png');
  AssetGenImage get foodRamen =>
      const AssetGenImage('assets/images/food_ramen.png');
  AssetGenImage get foodWes =>
      const AssetGenImage('assets/images/food_wes.png');
  AssetGenImage get home => const AssetGenImage('assets/images/home.png');
  AssetGenImage get profileIcon =>
      const AssetGenImage('assets/images/profile_icon.png');
  AssetGenImage get ranking1 =>
      const AssetGenImage('assets/images/ranking-1.png');
  AssetGenImage get ranking2 =>
      const AssetGenImage('assets/images/ranking-2.png');
  AssetGenImage get ranking3 =>
      const AssetGenImage('assets/images/ranking-3.png');
  AssetGenImage get search => const AssetGenImage('assets/images/search.png');
  AssetGenImage get shopAddress =>
      const AssetGenImage('assets/images/shop_address.png');
  AssetGenImage get shopIcon =>
      const AssetGenImage('assets/images/shop_icon.png');
  AssetGenImage get shopTime =>
      const AssetGenImage('assets/images/shop_time.png');
  AssetGenImage get user => const AssetGenImage('assets/images/user.png');
  AssetGenImage get userSample =>
      const AssetGenImage('assets/images/user_sample.jpg');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
