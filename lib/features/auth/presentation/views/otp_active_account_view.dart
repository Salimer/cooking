import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/auth/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpActiveAccountView extends StatelessWidget {
  const OtpActiveAccountView({super.key});

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
                        iconPath: Assets.icons.otpMessageIcon,
                        title: 'تحقق من البريد الإلكتروني',
                        bodyText:
                            "لقد قمنا بإرسال رمز التحقق على بريدك الإلكتروني"),
                    SizedBox(height: 20),
                    PinCodeTextField(
                      
                      appContext: context,
                      length: 4,
                      pinTheme: PinTheme(
                        fieldHeight: 70,
                        fieldWidth: 70,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(24),
                        borderWidth: 1,
                        
                      ),
                      textStyle: TextStyles.logoTitle.copyWith(fontSize: 40),
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
