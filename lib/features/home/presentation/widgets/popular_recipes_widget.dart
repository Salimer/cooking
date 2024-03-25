import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
            child: InfiniteCarouselWidget()
          ),
        ],
      ),
    );
  }
}


