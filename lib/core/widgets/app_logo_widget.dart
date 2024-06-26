import 'package:cooking/core/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogoWidget extends StatelessWidget {
  final String iconPath;
  const AppLogoWidget({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconPath,
      semanticsLabel: 'App Logo',
      height: screenH(context) / 6.6557377,
    );
  }
}
