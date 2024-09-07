// To parse this JSON data, do
//
//     final recipe = recipeFromJson(jsonString);

import 'dart:convert';

List<Recipe> recipeFromJson(String str) => List<Recipe>.from(json.decode(str).map((x) => Recipe.fromJson(x)));

String recipeToJson(List<Recipe> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Recipe {
    String dishName;
    String dishId;
    String imageUrl;
    bool isPublished;

    Recipe({
        required this.dishName,
        required this.dishId,
        required this.imageUrl,
        required this.isPublished,
    });

    factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        dishName: json["dishName"],
        dishId: json["dishId"],
        imageUrl: json["imageUrl"],
        isPublished: json["isPublished"],
    );

    Map<String, dynamic> toJson() => {
        "dishName": dishName,
        "dishId": dishId,
        "imageUrl": imageUrl,
        "isPublished": isPublished,
    };
}
