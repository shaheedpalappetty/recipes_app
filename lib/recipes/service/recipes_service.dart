// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:recipes_app/core/network/either.dart';
import 'package:recipes_app/core/network/exceptions.dart';
import 'package:recipes_app/core/network/network_manager.dart';
import 'package:recipes_app/recipes/model/recipe.dart';

class RecipeService {
  List<Recipe> _favouritesList = [];

  List<Recipe> get favouritesList => _favouritesList;
  final NetworkManager _api = NetworkManager();
  final String endpoint = 'nosh-assignment';

  void toggleFavourite(Recipe recipe) {
    if (!_favouritesList.contains(recipe)) {
      _favouritesList.add(recipe);
    } else {
      _favouritesList.remove(recipe);
    }
  }

  EitherResponse<List<Recipe>> fetchRecipes() async {
    try {
      final response = await _api.get(endpoint);
      final List<dynamic> fetchedData;
      fetchedData = _getResponse(response);

      final List<Recipe> recipes =
          fetchedData.map((e) => Recipe.fromJson(e)).toList();
      return Right(recipes);
    } on DioError catch (e) {
      if (e.error is SocketException) {
        return Left(ApiException('No Internet connection'));
      }
      return Left(ApiException.fromDioError(e));
    } catch (e) {
      return Left(ApiException('Unexpected error occurred'));
    }
  }

  static _getResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return (response.data);
      case 500:
        return throw ApiException('Server error');
      default:
        throw ApiException('Somthing went wrong');
    }
  }
}
