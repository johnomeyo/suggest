import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suggest/my_widgets/the_widgets.dart';

import '../essentials/notifications.dart';
import '../meals/breakfast/main_breakfast.dart';
import '../providers.dart';

class RecipeTextFields extends StatelessWidget {
  const RecipeTextFields(
      {super.key, required this.title, required this.hintText, this.icon});
  final String title;
  final String hintText;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  suffixIcon: icon,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  hintStyle:
                      TextStyle(color: Colors.grey.shade300, fontSize: 15)),
            ),
          ),
        )
      ],
    );
  }
}

class Ingredients extends StatefulWidget {
  const Ingredients({super.key});

  @override
  State<Ingredients> createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  List<String> ingredients = [
    "Ingredient",
    "Ingredient",
    "Ingredient",
    "Ingredient",
    "Ingredient"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(20)),
          height: 300,
          width: double.infinity,
          child: ListView.builder(
            itemCount: ingredients.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                title: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ingredients[index],
                        hintStyle: TextStyle(
                            color: Colors.grey.shade300, fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      ingredients.remove("Ingredient");
                    });
                  },
                  icon: Icon(
                    Icons.delete_outline,
                    color: Color(0xffFF3438),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
            onTap: () {
              setState(() {
                ingredients.add("Ingredient");
              });
            },
            child: RecipeButtons(name: "Add Ingredients:")),
      ],
    );
  }
}

class RecipeButtons extends StatelessWidget {
  const RecipeButtons({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFFECEC), borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Color(0xffFF3438),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFF3438),
                      fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Icon(
                Icons.book_rounded,
                color: Color(0xFFFF3438),
              ),
              title: Text(
                "Mooncake",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              actions: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications()));
                    },
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 25,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.bookmark_outline,
                    size: 25,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF3438),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Text(
                                'Learn how to become a\nmaster chef right now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 90,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 10),
                                    child: Text(
                                      "Read more",
                                      style:
                                          TextStyle(color: Color(0xFFFF3438)),
                                    ),
                                  )),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              height: 180,
                              right: 50,
                              child: Image.asset("lib/assets/chef.png")),
                          Positioned(
                              top: 0,
                              right: 0,
                              height: 100,
                              child: Image.asset("lib/assets/dish.png"))
                        ],
                      ),
                    ),
                  ),
                  Headings(heading: "Breakfast"),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainBreakfast()));
                        },
                        child: Row(
                          children: [
                            Recipes(
                              imagePath: 'lib/assets/piza.jpg',
                            ),
                            // Provider<AddBookmarkProvider>(
                            //   create: (_) => AddBookmarkProvider(),
                            //   child: Recipes(imagePath: 'lib/assets/piza.jpg'),
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            // Provider<AddBookmarkProvider>(
                            //   create: (_) => AddBookmarkProvider(),
                            //   child: Recipes(imagePath: 'lib/assets/berry.jpg'),
                            // ),
                            Recipes(
                              imagePath: 'lib/assets/berry.jpg',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            // Provider<AddBookmarkProvider>(
                            //   create: (_) => AddBookmarkProvider(),
                            //   child:
                            //       Recipes(imagePath: 'lib/assets/banana.jpg'),
                            // ),
                            Recipes(
                              imagePath: 'lib/assets/banana.jpg',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Lunch",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Color(0xFFFF3438),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Recipes(
                            imagePath: 'lib/assets/1.jpg',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Recipes(
                            imagePath: 'lib/assets/b.jpg',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Recipes(
                            imagePath: 'lib/assets/c.jpg',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Supper",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Color(0xFFFF3438),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Recipes(
                            imagePath: 'lib/assets/d.jpg',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Recipes(
                            imagePath: 'lib/assets/e.jpg',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Recipes(
                            imagePath: 'lib/assets/f.jpg',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )));
  }
}
