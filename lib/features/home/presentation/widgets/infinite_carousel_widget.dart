import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/home/data/fake.dart';
import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class InfiniteCarouselWidget extends StatelessWidget {
  const InfiniteCarouselWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfiniteCarousel.builder(
      center: phoneOrientation(context) == Orientation.landscape ? false : true,
      loop: false,
      itemCount: categories.length,
      itemExtent: 327,
      itemBuilder: (context, itemIndex, realIndex) {
        return CarouselBoxWidget();
      },
    );
  }
}
