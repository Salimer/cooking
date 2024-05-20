import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/home/data/fake.dart';
import 'package:flutter/material.dart';

class PopularCategoriesWidget extends StatelessWidget {
  const PopularCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: SizedBox(
        height: 103,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  Text(
                    categories[index]['name']!,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
