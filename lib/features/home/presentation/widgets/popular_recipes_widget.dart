import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/home/data/fake.dart';
import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class PopularRecipesWidget extends StatelessWidget {
  const PopularRecipesWidget({
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
            child: SubtitlesWidget(subtitle: 'اشهر الوصفات'),
          ),
          SizedBox(
            height: 169,
            child: InfiniteCarousel.builder(
              loop: false,
              itemCount: categories.length,
              itemExtent: 327,
              itemBuilder: (context, itemIndex, realIndex) => Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                    child: Text(
                      'عنوان الوصفة يمكن تغيير بعنوان اخر عنوان الوصفة يمكن',
                      style: TextStyles.paraBold.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
