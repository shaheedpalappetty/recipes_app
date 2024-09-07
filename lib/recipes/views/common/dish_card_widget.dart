import 'package:flutter/material.dart';
import 'package:recipes_app/recipes/model/recipe.dart';
import 'package:recipes_app/recipes/view_models/home_view_model.dart';
import '../../../utils/constants/custom_colors.dart';
import '../../../utils/constants/text_style.dart';

class DishCardWidget extends StatelessWidget {
  final bool isVertical;
  final Recipe recipe;
  final RecipesViewModel viewModel;

  const DishCardWidget({
    super.key,
    required this.isVertical,
    required this.recipe,
    required this.viewModel
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Card(
      color: CustomColors.cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  recipe.imageUrl,
                  width: isVertical ? double.maxFinite : width / 1.8,
                  height: isVertical ? height / 3.2 : height / 5.3,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 4,
                  right: 4,
                  child: GestureDetector(
                    onTap: () {
                      viewModel.addToFavouriteList(recipe);
                    },
                    child: Icon(
                      Icons.favorite,
                      color: viewModel.isFavourite(recipe)
                          ? CustomColors.favoriteIconColor
                          : CustomColors.disabledFavoriteIconColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              recipe.dishName,
              style: CustomTextStyle.dishCardTitle,
            ),
            const SizedBox(height: 4.0),
            SizedBox(
              width: isVertical ? double.maxFinite : width / 1.8,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        size: 15,
                        color: CustomColors.textColorSecondary,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '20 minutes',
                        style: CustomTextStyle.timeTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.green,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Vegetarian',
                        style: CustomTextStyle.vegetarianTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4.0),
            SizedBox(
              height: 15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  size: 15,
                  color: CustomColors.shadowColor,
                ),
                shrinkWrap: true,
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
