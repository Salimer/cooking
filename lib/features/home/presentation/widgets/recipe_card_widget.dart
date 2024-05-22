import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/widgets/widgets.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecipeCardWidget extends StatelessWidget {
  const RecipeCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
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
                    borderRadius: BorderRadius.circular(16),
                    child: Assets.images.recipe.image(fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(0, 0),
                          backgroundColor: Neutral.grey5,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Row(
                        children: [
                          SvgPicture.asset(Assets.icons.favourite),
                          const SizedBox(width: 3),
                          Text(
                            'حفظ الوجبة',
                            style: TextStyles.smallBold
                                .copyWith(color: orange[400]),
                          )
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
