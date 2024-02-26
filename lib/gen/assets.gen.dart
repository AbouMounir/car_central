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

  /// File path: assets/images/Toyota-logo-icon-on-transparent--PNG.png
  AssetGenImage get toyotaLogoIconOnTransparentPNG => const AssetGenImage(
      'assets/images/Toyota-logo-icon-on-transparent--PNG.png');

  /// File path: assets/images/audi-logo.jpg
  AssetGenImage get audiLogo =>
      const AssetGenImage('assets/images/audi-logo.jpg');

  /// File path: assets/images/car-1506922_1280.jpg
  AssetGenImage get car15069221280 =>
      const AssetGenImage('assets/images/car-1506922_1280.jpg');

  /// File path: assets/images/car-logo-nissan.jpg
  AssetGenImage get carLogoNissan =>
      const AssetGenImage('assets/images/car-logo-nissan.jpg');

  /// File path: assets/images/car.png
  AssetGenImage get car => const AssetGenImage('assets/images/car.png');

  /// File path: assets/images/citroen.png
  AssetGenImage get citroen => const AssetGenImage('assets/images/citroen.png');

  /// File path: assets/images/ferrari_logo_icon_145829.png
  AssetGenImage get ferrariLogoIcon145829 =>
      const AssetGenImage('assets/images/ferrari_logo_icon_145829.png');

  /// File path: assets/images/mercedes.jpg
  AssetGenImage get mercedesJpg =>
      const AssetGenImage('assets/images/mercedes.jpg');

  /// File path: assets/images/mercedes.webp
  AssetGenImage get mercedesWebp =>
      const AssetGenImage('assets/images/mercedes.webp');

  /// File path: assets/images/personne-tapant-ordinateur-portable-dans-bureau-sombre-genere-par-ia.jpg
  AssetGenImage get personneTapantOrdinateurPortableDansBureauSombreGenereParIa =>
      const AssetGenImage(
          'assets/images/personne-tapant-ordinateur-portable-dans-bureau-sombre-genere-par-ia.jpg');

  /// File path: assets/images/photo_2024-02-19_09-27-48.jpg
  AssetGenImage get photo20240219092748 =>
      const AssetGenImage('assets/images/photo_2024-02-19_09-27-48.jpg');

  /// File path: assets/images/tesla_logo_icon_181279.png
  AssetGenImage get teslaLogoIcon181279 =>
      const AssetGenImage('assets/images/tesla_logo_icon_181279.png');

  /// File path: assets/images/transparent-honda-logo-icon.png
  AssetGenImage get transparentHondaLogoIcon =>
      const AssetGenImage('assets/images/transparent-honda-logo-icon.png');

  /// File path: assets/images/voiture-3d-fond-simple.jpg
  AssetGenImage get voiture3dFondSimple =>
      const AssetGenImage('assets/images/voiture-3d-fond-simple.jpg');

  /// File path: assets/images/vue-voiture-3d-1.jpg
  AssetGenImage get vueVoiture3d1 =>
      const AssetGenImage('assets/images/vue-voiture-3d-1.jpg');

  /// File path: assets/images/vue-voiture-3d-removebg-preview.png
  AssetGenImage get vueVoiture3dRemovebgPreview =>
      const AssetGenImage('assets/images/vue-voiture-3d-removebg-preview.png');

  /// File path: assets/images/vue-voiture-3d.jpg
  AssetGenImage get vueVoiture3d =>
      const AssetGenImage('assets/images/vue-voiture-3d.jpg');

  /// File path: assets/images/web-developer.jpg
  AssetGenImage get webDeveloper =>
      const AssetGenImage('assets/images/web-developer.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        toyotaLogoIconOnTransparentPNG,
        audiLogo,
        car15069221280,
        carLogoNissan,
        car,
        citroen,
        ferrariLogoIcon145829,
        mercedesJpg,
        mercedesWebp,
        personneTapantOrdinateurPortableDansBureauSombreGenereParIa,
        photo20240219092748,
        teslaLogoIcon181279,
        transparentHondaLogoIcon,
        voiture3dFondSimple,
        vueVoiture3d1,
        vueVoiture3dRemovebgPreview,
        vueVoiture3d,
        webDeveloper
      ];
}

class MyAssets {
  MyAssets._();

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
