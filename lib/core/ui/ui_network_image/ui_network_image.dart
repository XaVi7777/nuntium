import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';

class UINetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final BoxFit? fit;

  const UINetworkImage({
    required this.imageUrl,
    this.width,
    this.height,
    this.borderRadius,
    this.fit = BoxFit.cover,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final image = CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: imageUrl,
      fit: fit,
    );

    if (borderRadius != null) {
      return ClipRRect(
        borderRadius: borderRadius!,
        child: image,
      );
    } else {
      return image;
    }
  }
}
