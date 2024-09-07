import 'package:flutter/material.dart';

import '../utils/constants/custom_colors.dart';
import '../utils/constants/text_style.dart';


class FavouriteDishes extends StatelessWidget {
  const FavouriteDishes({super.key});

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Dishes"),
        backgroundColor: CustomColors.appBarColor,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(16.0),
            leading: CircleAvatar(
              radius: 25,
              child: Image.network('https://via.placeholder.com/150'),
            ),
            trailing: const Icon(Icons.favorite,
                color: CustomColors.favoriteIconColor),
            title: const Text(
              'Jeerra Rice',
              style: CustomTextStyle.dishCardTitle,
            ),
          );
        },
      ),
    );
  }
}
