import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/auth/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';

class ResetPasswordEnterEmailView extends StatelessWidget {
  const ResetPasswordEnterEmailView({super.key});

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
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: authScreensPadding(context)),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: screenH(context) * 0.30),
                    LogoAndTitleWidget(
                        iconPath: Assets.icons.logo,
                        title: 'استعادة كلمة المرور',
                        bodyText:
                            'الرجاء إدخال البريد المسجل لدينا من قبل، للتمكن من استعادة كلمة المرور'),
                    SizedBox(height: 20),
                    FormInputWidget(
                      iconName: Assets.icons.emailInput,
                      placeholder: 'البريد اللإلكتروني',
                    ),
                    SizedBox(height: 40),
                    CustomElevatedButton(
                      borderRadius: BorderRadius.circular(24),
                      onPressed: () {},
                      child: Text(
                        'استعادة كلمة المرور',
                        style: TextStyles.greenButton,
                      ),
                    ),
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
