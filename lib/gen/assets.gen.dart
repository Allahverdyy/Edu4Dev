/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/images_home_view_b.png
  AssetGenImage get imagesHomeViewB =>
      const AssetGenImage('assets/images/png/images_home_view_b.png');

  /// File path: assets/images/png/images_home_view_bg.png
  AssetGenImage get imagesHomeViewBg =>
      const AssetGenImage('assets/images/png/images_home_view_bg.png');

  /// File path: assets/images/png/images_home_view_bg0.png
  AssetGenImage get imagesHomeViewBg0 =>
      const AssetGenImage('assets/images/png/images_home_view_bg0.png');

  /// File path: assets/images/png/images_home_view_bg01.png
  AssetGenImage get imagesHomeViewBg01 =>
      const AssetGenImage('assets/images/png/images_home_view_bg01.png');

  /// File path: assets/images/png/images_home_view_bg1.png
  AssetGenImage get imagesHomeViewBg1 =>
      const AssetGenImage('assets/images/png/images_home_view_bg1.png');

  /// File path: assets/images/png/images_home_view_bg23.png
  AssetGenImage get imagesHomeViewBg23 =>
      const AssetGenImage('assets/images/png/images_home_view_bg23.png');

  /// File path: assets/images/png/images_home_view_bgs.png
  AssetGenImage get imagesHomeViewBgs =>
      const AssetGenImage('assets/images/png/images_home_view_bgs.png');

  /// File path: assets/images/png/images_onboardingbgtwo.png
  AssetGenImage get imagesOnboardingbgtwo =>
      const AssetGenImage('assets/images/png/images_onboardingbgtwo.png');

  /// File path: assets/images/png/images_splash_view_logo.png
  AssetGenImage get imagesSplashViewLogo =>
      const AssetGenImage('assets/images/png/images_splash_view_logo.png');

  /// File path: assets/images/png/images_welcome_view_logo.png
  AssetGenImage get imagesWelcomeViewLogo =>
      const AssetGenImage('assets/images/png/images_welcome_view_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        imagesHomeViewB,
        imagesHomeViewBg,
        imagesHomeViewBg0,
        imagesHomeViewBg01,
        imagesHomeViewBg1,
        imagesHomeViewBg23,
        imagesHomeViewBgs,
        imagesOnboardingbgtwo,
        imagesSplashViewLogo,
        imagesWelcomeViewLogo
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
