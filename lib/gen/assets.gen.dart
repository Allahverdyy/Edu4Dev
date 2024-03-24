/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsPngGen get png => const $AssetsIconsPngGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
}

class $AssetsIconsPngGen {
  const $AssetsIconsPngGen();

  /// File path: assets/icons/png/icons_apple.png
  AssetGenImage get iconsApple =>
      const AssetGenImage('assets/icons/png/icons_apple.png');

  /// File path: assets/icons/png/icons_bottom_right.png
  AssetGenImage get iconsBottomRight =>
      const AssetGenImage('assets/icons/png/icons_bottom_right.png');

  /// File path: assets/icons/png/icons_google.png
  AssetGenImage get iconsGoogle =>
      const AssetGenImage('assets/icons/png/icons_google.png');

  /// File path: assets/icons/png/icons_top_left.png
  AssetGenImage get iconsTopLeft =>
      const AssetGenImage('assets/icons/png/icons_top_left.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [iconsApple, iconsBottomRight, iconsGoogle, iconsTopLeft];
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/images_edu4tech_logo.png
  AssetGenImage get imagesEdu4techLogo =>
      const AssetGenImage('assets/images/png/images_edu4tech_logo.png');

  /// File path: assets/images/png/images_edu4tech_logo_alternative.png
  AssetGenImage get imagesEdu4techLogoAlternative => const AssetGenImage(
      'assets/images/png/images_edu4tech_logo_alternative.png');

  /// File path: assets/images/png/images_home_view_bg.png
  AssetGenImage get imagesHomeViewBg =>
      const AssetGenImage('assets/images/png/images_home_view_bg.png');

  /// File path: assets/images/png/images_home_view_bg1.png
  AssetGenImage get imagesHomeViewBg1 =>
      const AssetGenImage('assets/images/png/images_home_view_bg1.png');

  /// File path: assets/images/png/images_home_view_bg23.png
  AssetGenImage get imagesHomeViewBg23 =>
      const AssetGenImage('assets/images/png/images_home_view_bg23.png');

  /// File path: assets/images/png/images_home_view_bgi.png
  AssetGenImage get imagesHomeViewBgi =>
      const AssetGenImage('assets/images/png/images_home_view_bgi.png');

  /// File path: assets/images/png/images_home_view_bgim.png
  AssetGenImage get imagesHomeViewBgim =>
      const AssetGenImage('assets/images/png/images_home_view_bgim.png');

  /// File path: assets/images/png/images_on_boarding_one.png
  AssetGenImage get imagesOnBoardingOne =>
      const AssetGenImage('assets/images/png/images_on_boarding_one.png');

  /// File path: assets/images/png/images_on_boarding_three.png
  AssetGenImage get imagesOnBoardingThree =>
      const AssetGenImage('assets/images/png/images_on_boarding_three.png');

  /// File path: assets/images/png/images_on_boarding_two.png
  AssetGenImage get imagesOnBoardingTwo =>
      const AssetGenImage('assets/images/png/images_on_boarding_two.png');

  /// File path: assets/images/png/images_onboardingbgtwo.png
  AssetGenImage get imagesOnboardingbgtwo =>
      const AssetGenImage('assets/images/png/images_onboardingbgtwo.png');

  /// File path: assets/images/png/images_sign_bg.png
  AssetGenImage get imagesSignBg =>
      const AssetGenImage('assets/images/png/images_sign_bg.png');

  /// File path: assets/images/png/images_welcome_view_logo.png
  AssetGenImage get imagesWelcomeViewLogo =>
      const AssetGenImage('assets/images/png/images_welcome_view_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        imagesEdu4techLogo,
        imagesEdu4techLogoAlternative,
        imagesHomeViewBg,
        imagesHomeViewBg1,
        imagesHomeViewBg23,
        imagesHomeViewBgi,
        imagesHomeViewBgim,
        imagesOnBoardingOne,
        imagesOnBoardingThree,
        imagesOnBoardingTwo,
        imagesOnboardingbgtwo,
        imagesSignBg,
        imagesWelcomeViewLogo
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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
