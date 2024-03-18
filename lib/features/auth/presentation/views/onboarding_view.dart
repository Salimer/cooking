import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/app_padds.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/widgets/app_logo_widget.dart';
import 'package:cooking/features/auth/presentation/widgets/auth_background_widget.dart';
import 'package:cooking/features/auth/presentation/widgets/auth_bottom_action_widget.dart';
import 'package:cooking/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:cooking/features/auth/presentation/widgets/logo_and_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:flutter/widgets.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AuthBackgroundWidget(),
          SingleChildScrollView(
            child: Container(
              padding:
                  EdgeInsets.symmetric(horizontal: authScreensPadding(context)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  LogoAndTitleWidget(),
                  SizedBox(
                      height: screenH(context) / 10.8266667),
                  CustomElevatedButton(
                    borderRadius: BorderRadius.circular(24),
                    onPressed: () {},
                    child: Text(
                      'إنشاء حساب',
                      style: TextStyles.greenButton,
                    ),
                  ),
                  SizedBox(height: screenH(context) / 40.6),
                  Container(
                    width: double.infinity,
                    height: screenH(context) / 13.53333,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: orange[500]!),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Text('تخطي', style: TextStyles.transButton),
                    ),
                  ),
                  SizedBox(
                      height: screenH(context) / 13.7627119),
                  const AuthBottomActionWidget(),
                  SizedBox(height: screenH(context) / 19.3333)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
