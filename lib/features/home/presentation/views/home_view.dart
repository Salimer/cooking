import 'package:cooking/core/config/config.dart';
import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cooking/gen/assets.gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: const Drawer(),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: screenW(context),
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 218,
                      child: Assets.images.homeCover.image(
                          fit: BoxFit.contain, repeat: ImageRepeat.repeatX),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Builder(
                                builder: (context) => IconButton(
                                  onPressed: () =>
                                      Scaffold.of(context).openDrawer(),
                                  icon: SvgPicture.asset(
                                    Assets.icons.drawerIcon,
                                    width: 30,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  Assets.icons.notificationsIcon,
                                  width: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 90),
                          child: Text('البحث عن أفضل الوصفات للطبخ',
                              style: TextStyles.h4Bold
                                  .copyWith(color: Neutral.white)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: const SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        SubtitlesWidget(subtitle: 'فئات شعبية'),
                        PopularCategoriesWidget(),
                        SubtitlesWidget(subtitle: 'الأكثر مشاهدة'),
                        RecipeCardWidget(),
                        SizedBox(height: 0)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SearchBarWidget()
        ],
      ),
    );
  }
}
