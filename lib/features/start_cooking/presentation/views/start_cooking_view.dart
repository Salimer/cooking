import 'package:cooking/core/extensions/extensions.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class StartCookingView extends StatelessWidget {
  const StartCookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Neutral.black,
      appBar: _appBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: homeScreenPadding),
        child: Stack(
          children: [
            SizedBox(
              width: context.screenWidth,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListView(children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        padding:
                            const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Neutral.grey1),
                        child: Text(
                          'نبدأ معا بتقطيع البصل الى ارباع ونزيل الشحم الزائد عن قطع اللحم ثم نغسلها. ونخفق البيض',
                          style: TextStyles.paraRegular
                              .copyWith(color: Neutral.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                            color: red[500],
                            borderRadius: BorderRadius.circular(4)
                          ),
                          child: Text('1', style: TextStyles.paraBold.copyWith(color: Neutral.white),),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SafeArea(
                bottom: true,
                child: CustomElevatedButton(
                  text: 'التالي',
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.black.withOpacity(0.6),
      leading: AppbarButtonWidget(
          icon: Assets.icons.arrowRight, color: Neutral.grey1),
      title: Text(
        'طريقة التحضير',
        style: TextStyles.h5Bold.copyWith(color: Neutral.white),
      ),
      actions: [
        Text(
          '3/1',
          style: TextStyles.h5Bold.copyWith(color: Neutral.white),
        )
      ],
    );
  }
}
