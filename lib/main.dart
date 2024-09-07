import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:recipes_app/app/app.locator.dart';
import 'package:recipes_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator().then((value) => runApp(const RecipesApp()));
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes App',
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      builder: FToastBuilder(),
    );
  }
}
