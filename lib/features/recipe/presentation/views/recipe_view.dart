import 'package:cooking/core/constants/constants.dart';
import 'package:cooking/features/recipe/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const RecipeImageWidget(),
          Container(
            color: Neutral.grey5,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 13),
                  child: RecipeNameAndDifficultyWidget(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: AuthorWidget(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: RecipeDurationAndCapacityWidget(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
