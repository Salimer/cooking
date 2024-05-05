import 'package:cooking/features/home/data/fake.dart';
import 'package:cooking/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PopularCategoriesWidget extends StatelessWidget {
  const PopularCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SubtitlesWidget(subtitle: 'فئات شعبية'),
          ),
          SizedBox(
            height: 95,
            child: MasonryGridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 2,
              // mainAxisSpacing: 4,
              crossAxisSpacing: 12,
              itemCount: categories.length,
              itemBuilder: (context, index) => CategoryChipWidget(
                  icon: categories[index]['icon']!,
                  label: categories[index]['name']!),
            ),
          )
        ],
      ),
    );
  }
}
