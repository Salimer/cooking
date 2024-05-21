import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/extensions/context_extension.dart';
import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter_svg/svg.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 400,
                width: context.screenWidth,
                child: AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Assets.images.recipe2.image(fit: BoxFit.cover),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Neutral.grey5,
                        ),
                        child: SvgPicture.asset(
                          Assets.icons.arrowRight,
                          width: 25,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Neutral.grey5),
                        child: SvgPicture.asset(
                          Assets.icons.favouriteWhite,
                          width: 25,
                          colorFilter: const ColorFilter.mode(
                              Neutral.grey2, BlendMode.srcIn),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            color: Neutral.grey5,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('شاكرية', style: TextStyles.paraRegular),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('درجة الصعوبة',
                              style: TextStyles.smallRegular),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              SvgPicture.asset(Assets.icons.diamondFilled),
                              const SizedBox(width: 3),
                              SvgPicture.asset(Assets.icons.diamondFilled),
                              const SizedBox(width: 3),
                              SvgPicture.asset(Assets.icons.diamond),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            foregroundImage:
                                AssetImage(Assets.images.avatar.keyName),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('نائف عبدالله',
                                  style: TextStyles.paraBold
                                      .copyWith(color: Neutral.black)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('اليمن',
                                  style: TextStyles.smallRegular
                                      .copyWith(color: Neutral.grey2))
                            ],
                          )
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5)
                        ),
                        onPressed: () {},
                        child: const Text('متابعة', style: TextStyle(color: Neutral.white),),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          )
        ],
      ),
    );
  }
}
