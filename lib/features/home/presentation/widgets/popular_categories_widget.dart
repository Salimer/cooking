import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/home/data/fake.dart';
import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class PopularCategoriesWidget extends StatelessWidget {
  const PopularCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.homeBackground,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SubtitlesWidget(subtitle: 'فئات شعبية'),
          ),
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: orange[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              categories[index]['icon']!,
                              style: const TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        Text(categories[index]['name']!)
                      ],
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
