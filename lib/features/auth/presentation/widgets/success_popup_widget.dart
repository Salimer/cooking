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
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(11)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 35, right: 40, left: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 100),
                    SizedBox(
                      width: 180,
                      child: Text(
                        'مبروك تم اعادة تعيين كلمة المرور',
                        style: TextStyles.logoTitle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      child: Text.rich(
                        TextSpan(children: [
                          const TextSpan(
                              text:
                                  'سوف يتم اعادة توجيهك الى الصفحة الرئيسية خلال ',
                              style: TextStyles.resetPasswordBody),
                          TextSpan(
                              text: '00:05',
                              style: TextStyles.greenTextSuccessMessage)
                        ]),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SvgPicture.asset(
              Assets.icons.successPopupIcon,
              semanticsLabel: 'Success popup icon',
            ),
          ],
        ),
      ),
    );
  }
}
