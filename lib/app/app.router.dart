// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i9;
import 'package:flutter/material.dart';
import 'package:recipes_app/recipes/dummy_views/list_view.dart' as _i5;
import 'package:recipes_app/recipes/dummy_views/meal_plan_view.dart' as _i7;
import 'package:recipes_app/recipes/dummy_views/nosh_view.dart' as _i6;
import 'package:recipes_app/recipes/dummy_views/profile_view.dart' as _i8;
import 'package:recipes_app/recipes/views/favourites_view.dart' as _i4;
import 'package:recipes_app/recipes/views/home_view.dart' as _i2;
import 'package:recipes_app/recipes/views/recipes_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i10;

class Routes {
  static const homeScreen = '/';

  static const recipesScreen = '/recipes-screen';

  static const favouriteDishes = '/favourite-dishes';

  static const listMenuView = '/list-menu-view';

  static const noshView = '/nosh-view';

  static const mealPlanView = '/meal-plan-view';

  static const profileView = '/profile-view';

  static const all = <String>{
    homeScreen,
    recipesScreen,
    favouriteDishes,
    listMenuView,
    noshView,
    mealPlanView,
    profileView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeScreen,
      page: _i2.HomeScreen,
    ),
    _i1.RouteDef(
      Routes.recipesScreen,
      page: _i3.RecipesScreen,
    ),
    _i1.RouteDef(
      Routes.favouriteDishes,
      page: _i4.FavouriteDishes,
    ),
    _i1.RouteDef(
      Routes.listMenuView,
      page: _i5.ListMenuView,
    ),
    _i1.RouteDef(
      Routes.noshView,
      page: _i6.NoshView,
    ),
    _i1.RouteDef(
      Routes.mealPlanView,
      page: _i7.MealPlanView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i8.ProfileView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeScreen: (data) {
      final args = data.getArgs<HomeScreenArguments>(
        orElse: () => const HomeScreenArguments(),
      );
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => _i2.HomeScreen(key: args.key),
        settings: data,
      );
    },
    _i3.RecipesScreen: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.RecipesScreen(),
        settings: data,
      );
    },
    _i4.FavouriteDishes: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.FavouriteDishes(),
        settings: data,
      );
    },
    _i5.ListMenuView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.ListMenuView(),
        settings: data,
      );
    },
    _i6.NoshView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.NoshView(),
        settings: data,
      );
    },
    _i7.MealPlanView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.MealPlanView(),
        settings: data,
      );
    },
    _i8.ProfileView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ProfileView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class HomeScreenArguments {
  const HomeScreenArguments({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant HomeScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

extension NavigatorStateExtension on _i10.NavigationService {
  Future<dynamic> navigateToHomeScreen({
    _i9.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.homeScreen,
        arguments: HomeScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRecipesScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.recipesScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFavouriteDishes([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.favouriteDishes,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToListMenuView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.listMenuView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNoshView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.noshView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMealPlanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mealPlanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeScreen({
    _i9.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.homeScreen,
        arguments: HomeScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRecipesScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.recipesScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFavouriteDishes([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.favouriteDishes,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithListMenuView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.listMenuView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNoshView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.noshView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMealPlanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mealPlanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
