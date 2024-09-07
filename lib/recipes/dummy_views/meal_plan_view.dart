import 'package:flutter/material.dart';
import 'package:recipes_app/utils/constants/custom_colors.dart';
import 'package:recipes_app/utils/constants/text_style.dart';

class MealPlanView extends StatelessWidget {
  const MealPlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Plan View'),
        centerTitle: true,
        backgroundColor: CustomColors.appBarColor,
      ),
      body: const Center(
        child: Text(
          'Meal Plan View',
          style: CustomTextStyle.sectionTitle,
        ),
      ),
    );
  }
}
