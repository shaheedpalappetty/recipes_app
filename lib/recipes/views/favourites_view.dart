import 'package:flutter/material.dart';
import 'package:recipes_app/recipes/view_models/favourites_view_model.dart';
import 'package:stacked/stacked.dart';

import '../../utils/constants/custom_colors.dart';
import '../../utils/constants/text_style.dart';

class FavouriteDishes extends StatelessWidget {
  const FavouriteDishes({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavouritesViewModel>.reactive(
        viewModelBuilder: () => FavouritesViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Favorite Dishes"),
              backgroundColor: CustomColors.appBarColor,
              centerTitle: true,
            ),
            body: viewModel.favouriteList().isEmpty
                ? const Center(
                    child: Text("No Favourites Dishes Found"),
                  )
                : ListView.builder(
                    itemCount: viewModel.favouriteList().length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: const EdgeInsets.all(16.0),
                        leading: ClipOval(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.network(
                              viewModel.favouriteList()[index].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        trailing: Icon(Icons.favorite,
                            color: viewModel.isFavourite(
                                    viewModel.favouriteList()[index])
                                ? CustomColors.favoriteIconColor
                                : CustomColors.disabledFavoriteIconColor),
                        title: Text(
                          viewModel.favouriteList()[index].dishName,
                          style: CustomTextStyle.dishCardTitle,
                        ),
                      );
                    },
                  ),
          );
        });
  }
}
