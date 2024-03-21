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

  /// File path: assets/icons/editEmailIcon.svg
  String get editEmailIcon => 'assets/icons/editEmailIcon.svg';

  /// File path: assets/icons/emailInput.svg
  String get emailInput => 'assets/icons/emailInput.svg';

  /// File path: assets/icons/logo.svg
  String get logo => 'assets/icons/logo.svg';

  /// File path: assets/icons/otpMessageIcon.svg
  String get otpMessageIcon => 'assets/icons/otpMessageIcon.svg';

  /// File path: assets/icons/passwordInput.svg
  String get passwordInput => 'assets/icons/passwordInput.svg';

  /// File path: assets/icons/successPopupIcon.svg
  String get successPopupIcon => 'assets/icons/successPopupIcon.svg';

  /// File path: assets/icons/userInput.svg
  String get userInput => 'assets/icons/userInput.svg';

  /// List of all assets
  List<String> get values => [
        editEmailIcon,
        emailInput,
        logo,
        otpMessageIcon,
        passwordInput,
        successPopupIcon,
        userInput
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/AuthBackground.png
  AssetGenImage get authBackground =>
      const AssetGenImage('assets/images/AuthBackground.png');

  /// File path: assets/images/SplashBackground.png
  AssetGenImage get splashBackground =>
      const AssetGenImage('assets/images/SplashBackground.png');

  /// List of all assets
  List<AssetGenImage> get values => [authBackground, splashBackground];
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
