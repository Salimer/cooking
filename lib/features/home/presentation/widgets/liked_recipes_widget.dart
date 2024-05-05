import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LikedRecipesWidget extends StatelessWidget {
  const LikedRecipesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: const Column(
        children: [
          Padding(
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
