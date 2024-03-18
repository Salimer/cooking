import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AuthBottomActionWidget extends StatelessWidget {
  const AuthBottomActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              green[100]!,
              green[500]!
            ]).createShader(bounds),
            child: TextButton(
              onPressed: () {},
              child:
                  const Text('تسجيل الدخول', style: TextStyles.authTextButton),
            ),
          ),
          const Text('هل لديك حساب؟', style: TextStyles.authBottomText),
        ],
      ),
    );
  }
}
