import 'package:flutter/material.dart';
import 'package:recipes_app/utils/constants/custom_colors.dart';
import 'package:recipes_app/utils/constants/text_style.dart';

class ListMenuView extends StatelessWidget {
  const ListMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        centerTitle: true,
        backgroundColor: CustomColors.appBarColor,
      ),
      body: const Center(
        child: Text(
          'List View',
          style: CustomTextStyle.sectionTitle,
        ),
      ),
    );
  }
}
