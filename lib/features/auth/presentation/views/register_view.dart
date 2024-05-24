import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/extensions/extensions.dart';
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
              padding: EdgeInsets.symmetric(horizontal: authScreensPadding),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: context.screenHeight * 0.10),
                    LogoAndTitleWidget(
                      iconPath: Assets.icons.logo,
                    ),
                    SizedBox(height: context.screenHeight / 30),
                    FormInputWidget(
                      iconName: Assets.icons.userInput,
                      placeholder: 'الاسم الكامل',
                    ),
                    SizedBox(height: context.screenHeight / 50),
                    FormInputWidget(
                      iconName: Assets.icons.emailInput,
                      placeholder: 'البريد اللإلكتروني',
                    ),
                    SizedBox(height: context.screenHeight / 50),
                    FormInputWidget(
                        iconName: Assets.icons.passwordInput,
                        placeholder: 'كلمة المرور'),
                    SizedBox(height: context.screenHeight / 50),
                    FormInputWidget(
                      iconName: Assets.icons.passwordInput,
                      placeholder: 'تأكيد كلمة المرور',
                    ),
                    const SizedBox(height: 15),
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
                    const SizedBox(height: 40),
                    CustomElevatedButton(
                        borderRadius: BorderRadius.circular(24),
                        onPressed: () {},
                        text: "إنشاء حساب"),
                    const SizedBox(height: 20),
                    const AuthBottomActionWidget(
                      redText: 'إنشاء حساب',
                      whiteText: 'لا تملك حساب؟',
                    ),
                    const SizedBox(height: 30)
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
