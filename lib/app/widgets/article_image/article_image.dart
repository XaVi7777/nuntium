import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:nuntium/app/theme/bloc/app_theme.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/data/models/media_metadata/media_metadata_model.dart';
import 'package:nuntium/generated/assets.gen.dart';

class ArticleImage extends StatelessWidget {
  final List<MediaMetadataModel>? mediaMetadata;
  final Size size;
  final BorderRadius borderRadius;
  final ImageFilter? overlayFilter;

  const ArticleImage({
    required this.size,
    this.mediaMetadata,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.overlayFilter,
    super.key,
  });

  MediaMetadataModel? _getBestFitImage() {
    if (mediaMetadata == null || mediaMetadata!.isEmpty) return null;

    MediaMetadataModel? bestFit;
    var bestFitDelta = double.infinity;

    for (final meta in mediaMetadata!) {
      final delta = (meta.width >= size.width && meta.height >= size.height)
          ? (meta.width - size.width).abs() + (meta.height - size.height).abs()
          : double.infinity;
      if (delta < bestFitDelta) {
        bestFit = meta;
        bestFitDelta = delta;
      }
    }

    if (bestFit == null) {
      for (final meta in mediaMetadata!) {
        final delta =
            (meta.width - size.width).abs() + (meta.height - size.height).abs();
        if (delta < bestFitDelta) {
          bestFit = meta;
          bestFitDelta = delta;
        }
      }
    }

    return bestFit;
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    final bestFitImage = _getBestFitImage();
    final hasImage = bestFitImage != null && bestFitImage.url.isNotEmpty;

    final image = hasImage
        ? UINetworkImage(
            imageUrl: bestFitImage.url,
            width: size.width,
            height: size.height,
            borderRadius: borderRadius,
          )
        : SizedBox.fromSize(
            size: size,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: theme.colorTheme.accent,
              ),
              child: Center(
                child: UISVGIcon(
                  width: size.width * .5,
                  height: size.height * .5,
                  assetName: Assets.svgCompiled.logoIcon,
                ),
              ),
            ),
          );

    if (overlayFilter == null) {
      return image;
    }

    return Stack(
      children: [
        ClipRRect(
          borderRadius: borderRadius,
          child: image,
        ),
        Positioned.fill(
          child: ClipRRect(
            borderRadius: borderRadius,
            child: BackdropFilter(
              filter: overlayFilter!,
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorTheme.onSurface.withOpacity(0.5),
                  borderRadius: borderRadius,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
