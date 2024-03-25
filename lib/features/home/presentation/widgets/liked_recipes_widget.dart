import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/home/data/fake.dart';
import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class LikedRecipesWidget extends StatelessWidget {
  const LikedRecipesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SubtitlesWidget(subtitle: 'وصفات محبوبة'),
          ),
          SizedBox(
            height: 169,
            child: InfiniteCarouselWidget(),
          ),
        ],
      ),
    );
  }
}
