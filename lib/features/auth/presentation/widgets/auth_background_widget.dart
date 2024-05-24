import 'package:cooking/core/extensions/extensions.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AuthBackgroundWidget extends StatelessWidget {
  const AuthBackgroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.authBackground.path,
      width: context.screenWidth,
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
    );
  }
}
