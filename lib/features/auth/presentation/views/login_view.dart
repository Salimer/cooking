import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/auth/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Stack(
        children: [
          const AuthBackgroundWidget(),
          SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: authScreensPadding(context)),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: screenH(context) * 0.25),
                    LogoAndTitleWidget(
                      iconPath: Assets.icons.logo,
                    ),
                    SizedBox(height: screenH(context) / 14),
                    FormInputWidget(
                      iconName: Assets.icons.emailInput,
                      placeholder: 'البريد اللإلكتروني',
                    ),
                    SizedBox(height: screenH(context) / 50),
                    FormInputWidget(
                        iconName: Assets.icons.passwordInput,
                        placeholder: 'كلمة المرور'),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RememberMeCheckboxWidget(
                            text: Text('تذكرني',
                                style: TextStyles.labelRegular
                                    .copyWith(color: Neutral.black))),
                        GestureDetector(
                          onTap: () {},
                          child: Text('نسيت كلمة المرور؟',
                              style: TextStyles.labelRegular
                                  .copyWith(color: Neutral.black)),
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    CustomElevatedButton(
                        borderRadius: BorderRadius.circular(24),
                        onPressed: () {},
                        text: 'تسجيل الدخول'),
                    SizedBox(height: 20),
                    AuthBottomActionWidget(
                      greenText: 'إنشاء حساب',
                      whiteText: 'لا تملك حساب؟',
                    ),
                    SizedBox(height: 30)
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
