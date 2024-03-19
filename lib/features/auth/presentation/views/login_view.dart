import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/auth/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    bool rememberMe = false;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String? email;
    return Scaffold(
      body: Stack(
        children: [
          const AuthBackgroundWidget(),
          SingleChildScrollView(
            child: Container(
              width: screenW(context),
              height: screenH(context),
              padding:
                  EdgeInsets.symmetric(horizontal: authScreensPadding(context)),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LogoAndTitleWidget(),
                      FormInputWidget(
                        iconName: Assets.icons.emailInput,
                        placeholder: 'البريد اللإلكتروني',
                      ),
                      SizedBox(height: 40),
                      FormInputWidget(
                          iconName: Assets.icons.passwordInput,
                          placeholder: 'كلمة المرور'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RememberMeCheckboxWidget(),
                          GestureDetector(
                            onTap: () {},
                            child: Text('نسيت كلمة المرور؟',
                                style: TextStyles.rememberMe),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      CustomElevatedButton(
                    borderRadius: BorderRadius.circular(24),
                    onPressed: () {},
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyles.greenButton,
                    ),
                  ),
                  AuthBottomActionWidget()
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
