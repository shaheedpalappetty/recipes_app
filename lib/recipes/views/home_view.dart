import 'package:flutter/material.dart';
import 'package:recipes_app/recipes/dummy_views/list_view.dart';
import 'package:recipes_app/recipes/dummy_views/meal_plan_view.dart';
import 'package:recipes_app/recipes/dummy_views/nosh_view.dart';
import 'package:recipes_app/recipes/dummy_views/profile_view.dart';

import 'package:recipes_app/recipes/views/recipes_view.dart';
import 'package:recipes_app/utils/constants/custom_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const RecipesScreen(),
    const ListMenuView(),
    const NoshView(),
    const MealPlanView(),
    const ProfileView(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        backgroundColor: CustomColors.bottomNavBarColor,
        selectedItemColor: CustomColors.activeItemColor,
        unselectedItemColor: CustomColors.inactiveItemColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.no_meals),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sailing_sharp),
            label: 'Nosh',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Meal Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
