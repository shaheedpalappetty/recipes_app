import 'package:recipes_app/recipes/service/recipes_service.dart';
import 'package:recipes_app/recipes/views/favourites_view.dart';
import 'package:recipes_app/recipes/views/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(
    page: RecipesScreen,
    initial: true,
  ),
  MaterialRoute(
    page: FavouriteDishes,
  )
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: RecipeService),
])
class App {}