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

  /// File path: assets/images/android12splash.png
  AssetGenImage get android12splash =>
      const AssetGenImage('assets/images/android12splash.png');

  /// File path: assets/images/get_started.png
  AssetGenImage get getStarted =>
      const AssetGenImage('assets/images/get_started.png');

  /// File path: assets/images/get_started@2x.png
  AssetGenImage get getStarted2x =>
      const AssetGenImage('assets/images/get_started@2x.png');

  /// File path: assets/images/get_started@3x.png
  AssetGenImage get getStarted3x =>
      const AssetGenImage('assets/images/get_started@3x.png');

  /// File path: assets/images/onboarding_0.png
  AssetGenImage get onboarding0 =>
      const AssetGenImage('assets/images/onboarding_0.png');

  /// File path: assets/images/onboarding_1.png
  AssetGenImage get onboarding1 =>
      const AssetGenImage('assets/images/onboarding_1.png');

  /// File path: assets/images/onboarding_2.png
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/images/onboarding_2.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        android12splash,
        getStarted,
        getStarted2x,
        getStarted3x,
        onboarding0,
        onboarding1,
        onboarding2,
        splash
      ];
}

class $AssetsSvgCompiledGen {
  const $AssetsSvgCompiledGen();

  /// File path: assets/svg_compiled/apple_logo.vg
  String get appleLogo => 'assets/svg_compiled/apple_logo.vg';

  /// File path: assets/svg_compiled/bell.vg
  String get bell => 'assets/svg_compiled/bell.vg';

  /// File path: assets/svg_compiled/bookmark.vg
  String get bookmark => 'assets/svg_compiled/bookmark.vg';

  /// File path: assets/svg_compiled/bookmark_alt.vg
  String get bookmarkAlt => 'assets/svg_compiled/bookmark_alt.vg';

  /// File path: assets/svg_compiled/check.vg
  String get check => 'assets/svg_compiled/check.vg';

  /// File path: assets/svg_compiled/email.vg
  String get email => 'assets/svg_compiled/email.vg';

  /// File path: assets/svg_compiled/google_logo.vg
  String get googleLogo => 'assets/svg_compiled/google_logo.vg';

  /// File path: assets/svg_compiled/home.vg
  String get home => 'assets/svg_compiled/home.vg';

  /// File path: assets/svg_compiled/left.vg
  String get left => 'assets/svg_compiled/left.vg';

  /// File path: assets/svg_compiled/lock.vg
  String get lock => 'assets/svg_compiled/lock.vg';

  /// File path: assets/svg_compiled/logo_icon.vg
  String get logoIcon => 'assets/svg_compiled/logo_icon.vg';

  /// File path: assets/svg_compiled/mic.vg
  String get mic => 'assets/svg_compiled/mic.vg';

  /// File path: assets/svg_compiled/right.vg
  String get right => 'assets/svg_compiled/right.vg';

  /// File path: assets/svg_compiled/search.vg
  String get search => 'assets/svg_compiled/search.vg';

  /// File path: assets/svg_compiled/sign_out.vg
  String get signOut => 'assets/svg_compiled/sign_out.vg';

  /// File path: assets/svg_compiled/tags.vg
  String get tags => 'assets/svg_compiled/tags.vg';

  /// File path: assets/svg_compiled/trash.vg
  String get trash => 'assets/svg_compiled/trash.vg';

  /// File path: assets/svg_compiled/user.vg
  String get user => 'assets/svg_compiled/user.vg';

  /// List of all assets
  List<String> get values => [
        appleLogo,
        bell,
        bookmark,
        bookmarkAlt,
        check,
        email,
        googleLogo,
        home,
        left,
        lock,
        logoIcon,
        mic,
        right,
        search,
        signOut,
        tags,
        trash,
        user
      ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// File path: assets/translations/ru-RU.json
  String get ruRU => 'assets/translations/ru-RU.json';

  /// List of all assets
  List<String> get values => [enUS, ruRU];
}

class Assets {
  Assets._();

  static const String aEnv = '.env';
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgCompiledGen svgCompiled = $AssetsSvgCompiledGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
