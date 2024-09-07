import 'package:flutter/material.dart';
import 'package:recipes_app/recipes/view_models/recipes_view_model.dart';
import 'package:recipes_app/utils/constants/custom_colors.dart';
import 'package:recipes_app/utils/constants/text_style.dart';
import 'package:recipes_app/recipes/views/common/dish_card_widget.dart';
import 'package:recipes_app/recipes/views/common/searchbar.dart';
import 'package:stacked/stacked.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return ViewModelBuilder<RecipesViewModel>.reactive(
        viewModelBuilder: () => RecipesViewModel(),
        onViewModelReady: (viewModel) => viewModel.fetchRecipes(),
        builder: (context, viewModel, child) {
          if (viewModel.isBusy) {
            return const Scaffold(
                body: Center(child: CircularProgressIndicator()));
          }
          if (viewModel.hasError) {
            return const Scaffold(
                body: Center(
                    child: Text(
              "An error occurred",
              style: CustomTextStyle.errorTitle,
            )));
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text("Recipes"),
              backgroundColor: CustomColors.appBarColor,
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: CustomColors.favoriteIconColor,
                    ),
                    onPressed: () {
                      viewModel.navigateToFavouriteDishesView();
                    },
                  ),
                ),
              ],
            ),
            body: viewModel.recipes.isEmpty
                ? const Center(
                    child: Text(
                      "No Recipes are found",
                      style: CustomTextStyle.sectionTitle,
                    ),
                  )
                : SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            height: height / 2.7,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.3),
                                  BlendMode.darken,
                                ),
                                image: NetworkImage(
                                    viewModel.recipes.first.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SearchBarWidget(),
                                  Column(
                                    children: [
                                      const Text(
                                        "Dish of the Day",
                                        style:
                                            CustomTextStyle.dishOfTheDayTitle,
                                      ),
                                      Text(
                                        viewModel.recipes.first.dishName,
                                        style: CustomTextStyle.dishOfTheDayName,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Text(
                            "Discover regional delights",
                            style: CustomTextStyle.sectionTitle,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            height: height / 2.9,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: viewModel.recipes.length,
                              itemBuilder: (context, index) {
                                return DishCardWidget(
                                    viewModel: viewModel,
                                    isVertical: false,
                                    recipe: viewModel.recipes[index]);
                              },
                            ),
                          ),
                          const Text(
                            "Breakfast for champions",
                            style: CustomTextStyle.sectionTitle,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: viewModel.recipes.length,
                              itemBuilder: (context, index) {
                                return DishCardWidget(
                                    viewModel: viewModel,
                                    isVertical: true,
                                    recipe: viewModel.recipes[index]);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          );
        });
  }
}
