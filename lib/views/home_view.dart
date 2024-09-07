import 'package:flutter/material.dart';
import 'package:recipes_app/utils/constants/custom_colors.dart';
import 'package:recipes_app/utils/constants/text_style.dart';
import 'package:recipes_app/views/favourites_view.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipes"),
        backgroundColor: CustomColors.appBarColor,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(
                Icons.favorite,
                color: CustomColors.favoriteIconColor,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavouriteDishes(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                height: height / 2.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                    image: const NetworkImage(
                        'https://via.placeholder.com/300'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Search for recipes...",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Dish of the Day",
                            style: CustomTextStyle.dishOfTheDayTitle,
                          ),
                          Text(
                            "Sample Dish Name",
                            style: CustomTextStyle.dishOfTheDayName,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Discover regional delights",
                style: CustomTextStyle.sectionTitle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                height: height / 2.9,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Placeholder(
                      fallbackHeight: 100,
                      fallbackWidth: 100,
                    );
                  },
                ),
              ),
              const Text(
                "Breakfast for champions",
                style: CustomTextStyle.sectionTitle,
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Placeholder(
                      fallbackHeight: 100,
                      fallbackWidth: double.infinity,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
