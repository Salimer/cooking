import 'package:cooking/core/constants/constants.dart';
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
        drawer: Drawer(),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Neutral.grey4,
                  width: screenW(context),
                  padding:
                      EdgeInsets.only(top: 0, bottom: 40, right: 20, left: 90),
                  child: Text('البحث عن أفضل الوصفات للطبخ',
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
                Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [SubtitlesWidget(subtitle: 'فئات شعبية')],
                    ))
              ],
            )
          ],
        ));
  }
}
