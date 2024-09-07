import 'package:recipes_app/app/app.locator.dart';
import 'package:recipes_app/recipes/model/recipe.dart';
import 'package:recipes_app/recipes/service/recipes_service.dart';
import 'package:stacked/stacked.dart';

class FavouritesViewModel extends BaseViewModel {
  final RecipeService _recipeService = locator<RecipeService>();

  addToFavouriteList(Recipe recipe) {
    _recipeService.toggleFavourite(recipe);
    rebuildUi();
  }

  bool isFavourite(Recipe recipe) {
    return _recipeService.favouritesList.contains(recipe);
  }

  List<Recipe> favouriteList() {
    return _recipeService.favouritesList;
  }
}
