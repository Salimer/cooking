import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/extensions/extensions.dart';
import 'package:cooking/core/widgets/widgets.dart';
import 'package:cooking/features/auth/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';

class ResetPasswordNewPasswordView extends StatelessWidget {
  const ResetPasswordNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return const SuccessPopupWidget();
        },
      );
    }

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
                    SizedBox(height: context.screenHeight * 0.25),
                    LogoAndTitleWidget(
                        iconPath: Assets.icons.logo,
                        title: 'استعادة كلمة المرور',
                        bodyText: 'الرجاء ادخال كلمة المرور الجديدة لحسابك'),
                    const SizedBox(height: 20),
                    FormInputWidget(
                      iconName: Assets.icons.passwordInput,
                      placeholder: 'كلمة المرور الجديدة',
                    ),
                    SizedBox(height: context.screenHeight / 50),
                    FormInputWidget(
                      iconName: Assets.icons.passwordInput,
                      placeholder: 'تأكيد كلمة المرور الجديدة',
                    ),
                    const SizedBox(height: 40),
                    CustomElevatedButton(
                      onPressed: _showDialog,
                      text: 'تأكيد',
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
