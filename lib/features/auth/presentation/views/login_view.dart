import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/auth/presentation/widgets/auth_background_widget.dart';
import 'package:cooking/features/auth/presentation/widgets/form_input_widget.dart';
import 'package:cooking/features/auth/presentation/widgets/logo_and_title_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    LogoAndTitleWidget(),
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: FormInputWidget()),
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
