import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/auth/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AuthBackgroundWidget(),
          SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: authScreensPadding(context)),
                child: Column(
                  children: [
                    SizedBox(height: screenH(context) * 0.35),
                    LogoAndTitleWidget(),
                    SizedBox(height: screenH(context) / 12),
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
                      height: 60,
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
                    SizedBox(height: screenH(context) / 15),
                    const AuthBottomActionWidget(
                      greenText: "تسجيل الدخول",
                      whiteText: "هل لديك حساب؟",
                    ),
                    SizedBox(height: screenH(context) / 19.3333)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
