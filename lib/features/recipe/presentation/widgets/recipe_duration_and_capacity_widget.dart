import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/widgets/widgets.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/material.dart';


class RecipeDurationAndCapacityWidget extends StatelessWidget {
  const RecipeDurationAndCapacityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RecipeCardLabelWidget(
          greyText: 'وقت الطهي',
          redText: "دقائق",
          duration: 10,
          icon: Assets.icons.clockIcon,
          pad: 20,
          backgroundColor: orange[50],
        ),
        const SizedBox(width: 10),
        RecipeCardLabelWidget(
          greyText: 'تخدمهم',
          redText: 'أشخاص',
          duration: 4,
          icon: Assets.icons.userIcon,
          pad: 20,
          backgroundColor: orange[50],
        ),
        const SizedBox(width: 10),
        RecipeCardLabelWidget(
          greyText: "وقت التحضير",
          duration: 60,
          redText: 'دقيقة',
          icon: Assets.icons.clockIcon,
          pad: 20,
          backgroundColor: orange[50],
        )
      ],
    );
  }
}

