import 'package:recipes_app/recipes/dummy_views/list_view.dart';
import 'package:recipes_app/recipes/dummy_views/meal_plan_view.dart';
import 'package:recipes_app/recipes/dummy_views/nosh_view.dart';
import 'package:recipes_app/recipes/dummy_views/profile_view.dart';
import 'package:recipes_app/recipes/service/recipes_service.dart';
import 'package:recipes_app/recipes/views/favourites_view.dart';
import 'package:recipes_app/recipes/views/home_view.dart';
import 'package:recipes_app/recipes/views/recipes_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: HomeScreen,
      initial: true,
    ),
    MaterialRoute(
      page: RecipesScreen,
    ),
    MaterialRoute(
      page: FavouriteDishes,
    ),
    MaterialRoute(
      page: ListMenuView,
    ),
    MaterialRoute(
      page: NoshView,
    ),
    MaterialRoute(
      page: MealPlanView,
    ),
    MaterialRoute(
      page: ProfileView,
    ),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: RecipeService),
  ],
)
class App {}