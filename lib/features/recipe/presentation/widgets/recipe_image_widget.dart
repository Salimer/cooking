import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/extensions/extensions.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeImageWidget extends StatelessWidget {
  const RecipeImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}