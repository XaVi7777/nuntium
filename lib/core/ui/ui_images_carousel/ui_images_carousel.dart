import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class UIImagesCarousel extends StatefulWidget {
  final List<Widget> images;
  final CarouselOptions options;
  final Size? indicatorSeparatorSize;
  final Widget Function(int currentIndex, int itemCount)? indicatorBuilder;

  UIImagesCarousel({
    required this.images,
    required this.options,
    this.indicatorBuilder,
    this.indicatorSeparatorSize,
    super.key,
  })  : assert(images.isNotEmpty, 'The image list should not be empty.'),
        assert(options.initialPage >= 0 && options.initialPage < images.length,
            'The initial index must be within the bounds of the images list.');

  @override
  State<UIImagesCarousel> createState() => _UIImagesCarouselState();
}

class _UIImagesCarouselState extends State<UIImagesCarousel> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.options.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    final carouselWidget = CarouselSlider(
      options: widget.options.copyWith(
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      items: widget.images.map((image) {
        return Builder(
          builder: (context) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: image,
              ),
            );
          },
        );
      }).toList(),
    );

    if (widget.indicatorBuilder == null) {
      return carouselWidget;
    }

    return Column(
      children: [
        carouselWidget,
        if (widget.indicatorSeparatorSize != null)
          SizedBox.fromSize(size: widget.indicatorSeparatorSize),
        widget.indicatorBuilder!(_currentIndex, widget.images.length),
      ],
    );
  }
}
