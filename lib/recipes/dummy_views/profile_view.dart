import 'package:flutter/material.dart';
import 'package:recipes_app/utils/constants/custom_colors.dart';
import 'package:recipes_app/utils/constants/text_style.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile View'),
        centerTitle: true,
        backgroundColor: CustomColors.appBarColor,
      ),
      body: const Center(
        child: Text(
          'Profile View',
          style: CustomTextStyle.sectionTitle,
        ),
      ),
    );
  }
}
