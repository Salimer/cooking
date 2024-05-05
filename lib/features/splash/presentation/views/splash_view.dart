import 'package:cooking/core/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          Assets.images.splashBackground.path,
          fit: BoxFit.cover,
        ),
        Center(
            child: AppLogoWidget(
          iconPath: Assets.icons.logo,
        ))
      ],
    ));
  }
}
