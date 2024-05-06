import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PopularRecipesWidget extends StatelessWidget {
  const PopularRecipesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.homeBackground,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SubtitlesWidget(subtitle: 'الأكثر مشاهدة'),
          ),
          SizedBox(height: 169, child: InfiniteCarouselWidget()),
        ],
      ),
    );
  }
}
