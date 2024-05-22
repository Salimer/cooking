import 'package:cooking/core/constants/app_padds.dart';
import 'package:cooking/gen/assets.gen.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class StartCookingView extends StatelessWidget {
  const StartCookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Neutral.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: homeScreenPadding),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          AppbarButtonWidget(
                              icon: Assets.icons.arrowRight,
                              color: Neutral.grey1),
                          SizedBox(width: 5),
                          Text(
                            'طريقة التحضير',
                            style: TextStyles.h5Bold
                                .copyWith(color: Neutral.white),
                          )
                        ],
                      ),
                      Text(
                        '1/3',
                        style: TextStyles.h5Bold.copyWith(color: Neutral.white),
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                  child: ElevatedButton(
                onPressed: () {},
                child: Text('press me', style: TextStyle(color: Colors.white),),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
