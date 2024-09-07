import 'package:flutter/material.dart';
import 'package:recipes_app/views/home_view.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecipesScreen(),
    );
  }
}