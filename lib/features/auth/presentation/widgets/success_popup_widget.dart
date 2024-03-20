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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Positioned(
              bottom: -100,
              child: SvgPicture.asset(
                Assets.icons.successPopupIcon,
                semanticsLabel: 'Success popup icon',
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 200),
                    Text('مبروك تم اعادة تعيين كلمة المرور',
                        style: TextStyles.logoTitle),
                    Text('سوف يتم اعادة توجيهك الى الصفحة الرئيسية خلال ',
                        style: TextStyles.resetPasswordBody)
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
