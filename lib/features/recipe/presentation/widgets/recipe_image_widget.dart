import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/extensions/extensions.dart';
import 'package:cooking/core/widgets/widgets.dart';
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
                AppbarButtonWidget(icon: Assets.icons.arrowRight),
                AppbarButtonWidget(icon: Assets.icons.favouriteWhite),
              ],
            ),
          ),
        )
      ],
    );
  }
}


