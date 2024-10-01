import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';


class UISVGIcon extends StatelessWidget {
  final String assetName;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? color;
  final Alignment alignment;

  const UISVGIcon({
    required this.assetName,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.color,
    this.alignment = Alignment.center,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final iconWidth = width ?? 24.0;
    final iconHeight = height ?? 24.0;

    return SizedBox(
      width: iconWidth,
      height: iconHeight,
      child: Align(
        alignment: alignment,
        child: SvgPicture(
          width: iconWidth,
          height: iconHeight,
          AssetBytesLoader(assetName),
          fit: fit,
          colorFilter:
              color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        ),
      ),
    );
  }
}
