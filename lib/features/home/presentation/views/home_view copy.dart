import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/core/extensions/extensions.dart';
import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cooking/gen/assets.gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Neutral.grey4,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: SvgPicture.asset(Assets.icons.drawerIcon),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.icons.notificationsIcon))
        ],
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Neutral.grey4,
                    height: 120,
                    width: context.screenWidth,
                    padding: const EdgeInsets.only(right: 20, left: 90),
                    child: Text('البحث عن أفضل الوصفات للطبخ',
                        style:
                            TextStyles.h4Bold.copyWith(color: Neutral.black)),
                  ),
                  Container(
                    color: Neutral.white,
                    child: const Column(
                      children: [
                        SizedBox(height: 40),
                        PopularCategoriesWidget(),
                        PopularRecipesWidget(),
                        LikedRecipesWidget(),
                        SizedBox(height: 70)
                      ],
                    ),
                  ),
                ],
              ),
              const SearchBarWidget()
            ],
          ),
        ),
      ),
    );
  }
}
