import 'package:cooking/core/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cooking/gen/assets.gen.dart';

class SuccessPopupWidget extends StatelessWidget {
  const SuccessPopupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(11)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 30, right: 40, left: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 100),
                    SizedBox(
                      width: 180,
                      child: Text(
                        'مبروك تم اعادة تعيين كلمة المرور',
                        style: TextStyles.logoTitle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'سوف يتم اعادة توجيهك الى الصفحة الرئيسية خلال ',
                        style: TextStyles.resetPasswordBody,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 290,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  SvgPicture.asset(
                    Assets.icons.successPopupIcon,
                    semanticsLabel: 'Success popup icon',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}