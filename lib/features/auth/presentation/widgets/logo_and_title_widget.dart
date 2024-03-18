import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class LogoAndTitleWidget extends StatelessWidget {
  const LogoAndTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppLogoWidget(),
        SizedBox(height: MediaQuery.of(context).size.height / 67.666667),
        Text('اكتشف افضل وصفات الطعام',
            style: TextStyles.logoTitle),
      ],
    );
  }
}
