import 'package:flutter/material.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/generated/assets.gen.dart';

class OnboardingCarousel extends StatelessWidget {
  const OnboardingCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UIImagesCarousel(
      images: _buildImages(),
      indicatorSeparatorSize: UISizes.carouselIndicatorSeparatorSize,
      indicatorBuilder: (currentIndex, itemCount) => UIPageViewIndicator(
        currentIndex: currentIndex,
        itemCount: itemCount,
      ),
      options: _buildCarouselOptions(context),
    );
  }

  List<Image> _buildImages() {
    return [
      Assets.images.onboarding0.image(fit: BoxFit.cover),
      Assets.images.onboarding1.image(fit: BoxFit.cover),
      Assets.images.onboarding2.image(fit: BoxFit.cover),
    ];
  }

  CarouselOptions _buildCarouselOptions(BuildContext context) {
    final carouselHeight = MediaQuery.of(context).size.height * 0.4;

    return CarouselOptions(
      height: carouselHeight,
      aspectRatio: 4 / 3,
      initialPage: 1,
      enableInfiniteScroll: false,
      enlargeCenterPage: true,
      viewportFraction: 0.7,
    );
  }
}
