import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'recipe_card_label_widget.dart';

class RecipeCardWidget extends StatelessWidget {
  const RecipeCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Neutral.grey5,
      margin: EdgeInsets.symmetric(horizontal: homeScreenPadding(context)),
      elevation: 0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 1.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Assets.images.recipe.image(fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Neutral.grey5
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.heart_broken),
                          Text('حفظ الوجبة')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RecipeCardLabelWidget(
                    greyText: 'وقت الطهي',
                    redText: "دقائق",
                    duration: 10,
                    icon: Assets.icons.clockIcon),
                const SizedBox(width: 10),
                RecipeCardLabelWidget(
                    greyText: 'تخدمهم',
                    redText: 'أشخاص',
                    duration: 4,
                    icon: Assets.icons.userIcon),
                const SizedBox(width: 10),
                RecipeCardLabelWidget(
                  greyText: "وقت التحضير",
                  duration: 60,
                  redText: 'دقيقة',
                  icon: Assets.icons.clockIcon,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
