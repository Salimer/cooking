import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
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
          return SuccessPopupWidget();
        },
      );
    }

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
                    SizedBox(height: screenH(context) * 0.25),
                    LogoAndTitleWidget(
                      iconPath: Assets.icons.logo,
                        title: 'استعادة كلمة المرور',
                        bodyText: 'الرجاء ادخال كلمة المرور الجديدة لحسابك'),
                    SizedBox(height: 20),
                    FormInputWidget(
                      iconName: Assets.icons.passwordInput,
                      placeholder: 'كلمة المرور الجديدة',
                    ),
                    SizedBox(height: screenH(context) / 50),
                    FormInputWidget(
                      iconName: Assets.icons.passwordInput,
                      placeholder: 'تأكيد كلمة المرور الجديدة',
                    ),
                    SizedBox(height: 40),
                    CustomElevatedButton(
                      borderRadius: BorderRadius.circular(24),
                      onPressed: _showDialog,
                      child: Text(
                        'تأكيد',
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
