import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class LogoAndTitleWidget extends StatelessWidget {
  final String iconPath;
  final String bodyText;
  final String title;
  const LogoAndTitleWidget(
      {super.key, this.title = 'اكتشف افضل وصفات الطعام', this.bodyText = '', required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppLogoWidget(
          iconPath: iconPath,
        ),
        SizedBox(height: screenH(context) / 67.666667),
        Text(
          title,
          style: TextStyles.logoTitle,
        ),
        if (bodyText.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Text(
              bodyText,
              style: TextStyles.resetPasswordBody,
              textAlign: TextAlign.center,
            ),
          )
      ],
    );
  }
}
