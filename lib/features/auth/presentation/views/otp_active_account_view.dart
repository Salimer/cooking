import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/auth/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';

class OtpActiveAccountView extends StatelessWidget {
  const OtpActiveAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AuthBackgroundWidget(),
          SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: authScreensPadding(context)),
              child: Column(
                children: [
                  SizedBox(height: screenH(context) * 0.20),
                  LogoAndTitleWidget(
                      iconPath: Assets.icons.otpMessageIcon,
                      iconTitleGap: 30,
                      title: 'تحقق من البريد الإلكتروني',
                      bodyText:
                          "لقد قمنا بإرسال رمز التحقق على بريدك الإلكتروني"),
                  const SizedBox(height: 20),
                  ChangeEmailWidget(),
                  const SizedBox(height: 30),
                  const Directionality(
                    textDirection: TextDirection.ltr,
                    child: PinCodeWidget(),
                  ),
                  const SizedBox(height: 40),
                  Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'إعادة إرسال رمز التحقق بعد',
                          style: TextStyle(color: Neutral.grey2),
                        ),
                        TextSpan(
                          text: '  00:50',
                          style: TextStyle(color: green[500]),
                        )
                      ]),
                      textAlign: TextAlign.center,
                      style: TextStyles.labelRegular),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
