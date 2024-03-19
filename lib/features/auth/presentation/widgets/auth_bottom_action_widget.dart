import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AuthBottomActionWidget extends StatelessWidget {
  final String greenText;
  final String whiteText;
  const AuthBottomActionWidget(
      {super.key, required this.greenText, required this.whiteText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(whiteText, style: TextStyles.authBottomText),
          ShaderMask(
            shaderCallback: (bounds) =>
                LinearGradient(colors: [green[100]!, green[500]!])
                    .createShader(bounds),
            child: TextButton(
              onPressed: () {},
              child: Text(
                greenText,
                style: TextStyles.authBottomText.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
