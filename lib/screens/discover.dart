import 'package:flutter/material.dart';
import 'package:suggest/essentials/chefs.dart';
import 'package:suggest/my_widgets/my_widgets.dart';
import 'package:suggest/my_widgets/the_widgets.dart';

void main() => runApp(const Discover());

class Discover extends StatelessWidget {
  const Discover({super.key});

  static const String _title = 'Discover';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      title: _title,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            title: const Text(
              _title,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.book_rounded,
              color: Color(0xFFFF3438),
            ),
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: MoreIcon(),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CustomSearchBar(
                    hintText: 'Search for recipes or a chef',
                  ),
                ),
                Headings(heading: "Most Popular"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Recipes(
                          imagePath: 'lib/assets/piza.jpg',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Recipes(
                          imagePath: 'lib/assets/berry.jpg',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Recipes(
                          imagePath: 'lib/assets/banana.jpg',
                        ),
                      ],
                    ),
                  ),
                ),
                Headings(heading: "Recipe Categories"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecipeCategories(
                          imagePath: "lib/assets/b.jpg",
                          categories: 'Pizza',
                          recipeCount: 15000,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RecipeCategories(
                          imagePath: "lib/assets/c.jpg",
                          categories: 'Salad',
                          recipeCount: 17890,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RecipeCategories(
                          imagePath: "lib/assets/d.jpg",
                          categories: 'Burger',
                          recipeCount: 13921,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RecipeCategories(
                          imagePath: "lib/assets/e.jpg",
                          categories: 'Donuts',
                          recipeCount: 15000,
                        ),
                      ],
                    ),
                  ),
                ),
                Headings(heading: "Top Chefs"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChefsPage()));
                      },
                      child: Row(
                        children: [
                          Chefs(
                              chefName: "Jonathan",
                              imagePath: "lib/assets/jonathan.jpg"),
                          SizedBox(
                            width: 10,
                          ),
                          Chefs(
                              chefName: "Febrian",
                              imagePath: "lib/assets/febrian.jpg"),
                          SizedBox(
                            width: 10,
                          ),
                          Chefs(
                              chefName: "Jesson",
                              imagePath: "lib/assets/jesson.jpg"),
                        ],
                      ),
                    ),
                  ),
                ),
                Headings(heading: "Our Recommendations"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Recipes(imagePath: "lib/assets/banana.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      Recipes(imagePath: "lib/assets/berry.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      Recipes(imagePath: "lib/assets/d.jpg"),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
