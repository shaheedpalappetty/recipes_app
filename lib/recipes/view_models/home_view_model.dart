

import 'package:fluttertoast/fluttertoast.dart';
import 'package:recipes_app/app/app.locator.dart';
import 'package:recipes_app/app/app.router.dart';
import 'package:recipes_app/recipes/model/recipe.dart';
import 'package:recipes_app/recipes/service/recipes_service.dart';
import 'package:recipes_app/utils/constants/custom_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RecipesViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final RecipeService _recipeService = locator<RecipeService>();
  List<Recipe> _recipes = [];

  List<Recipe> get recipes => _recipes;

  Future<void> fetchRecipes() async {
    setBusy(true);
    await _recipeService.fetchRecipes().then((value) => value.fold((left) {
          Fluttertoast.showToast(
            msg: left.message,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: CustomColors.errorColor,
            textColor: CustomColors.black,
          );
          setError(left.message);
          return;
        }, (right) => _recipes = right));
    setBusy(false);
  }

  addToFavouriteList(Recipe recipe) {
    _recipeService.toggleFavourite(recipe);

    rebuildUi();
  }

  bool isFavourite(Recipe recipe) {
    return _recipeService.favouritesList.contains(recipe);
  }

  navigateToFavouriteDishesView() {
    navigationService.navigateTo(Routes.favouriteDishes);
  }
}
