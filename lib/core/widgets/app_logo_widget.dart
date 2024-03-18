import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.icons.logo,
      semanticsLabel: 'App Logo',
      height: MediaQuery.of(context).size.height / 6.6557377,
    );
  }
}
