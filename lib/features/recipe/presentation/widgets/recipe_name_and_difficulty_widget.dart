import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class RecipeNameAndDifficultyWidget extends StatelessWidget {
  const RecipeNameAndDifficultyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
