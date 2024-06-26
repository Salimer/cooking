import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/auth/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                    SizedBox(height: screenH(context) * 0.10),
                    LogoAndTitleWidget(
                      iconPath: Assets.icons.logo,
                    ),
                    SizedBox(height: screenH(context) / 30),
                    FormInputWidget(
                      iconName: Assets.icons.userInput,
                      placeholder: 'الاسم الكامل',
                    ),
                    SizedBox(height: screenH(context) / 50),
                    FormInputWidget(
                      iconName: Assets.icons.emailInput,
                      placeholder: 'البريد اللإلكتروني',
                    ),
                    SizedBox(height: screenH(context) / 50),
                    FormInputWidget(
                        iconName: Assets.icons.passwordInput,
                        placeholder: 'كلمة المرور'),
                    SizedBox(height: screenH(context) / 50),
                    FormInputWidget(
                      iconName: Assets.icons.passwordInput,
                      placeholder: 'تأكيد كلمة المرور',
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RememberMeCheckboxWidget(
                          text: Text(
                            'أوافق على شروط الاستخدام و سياسة الخصوصية',
                            style: TextStyles.smallRegular
                                .copyWith(color: Neutral.grey1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    CustomElevatedButton(
                        borderRadius: BorderRadius.circular(24),
                        onPressed: () {},
                        text: "إنشاء حساب"),
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
