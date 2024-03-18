import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class LogoAndTitleWidget extends StatelessWidget {
  const LogoAndTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final spToPx = MediaQuery.of(context).devicePixelRatio;
    print(spToPx);
    print('hello');
    return Column(
      children: [
        AppLogoWidget(),
        SizedBox(height: screenHeight / 67.666667),
        Text(
          'اكتشف افضل وصفات الطعام',
          style: TextStyles.logoTitle,
        ),
      ],
    );
  }
}
