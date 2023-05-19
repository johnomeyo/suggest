import 'package:flutter/material.dart';
import 'package:suggest/my_widgets/the_widgets.dart';
import 'package:suggest/my_widgets/them_widgets.dart';
import '../data/recipe.dart';
// ignore: depend_on_referenced_packages
import 'package:fluttertoast/fluttertoast.dart';

class MyComment extends StatelessWidget {
  const MyComment({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: const Text(
              "The comment section will be available soon❤️😊"),
          action: SnackBarAction(
            label: 'Okay',
            onPressed: () {
              // Some code to undo the change.
              Navigator.pop(context);
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: CircleAvatar(
        radius: 11,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 10,
          child: Icon(
            Icons.more_horiz_outlined,
            color: Colors.black,
            size: 15,
          ),
        ),
      ),
    );
  }
}

class TheButton extends StatefulWidget {
  const TheButton({super.key});

  @override
  State<TheButton> createState() => _TheButtonState();
}

bool isPressed = true;

class _TheButtonState extends State<TheButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Container(
        width: 70,
        height: 40,
        decoration: BoxDecoration(
            color: Color(isPressed ? 0xffFF3438 : 0xffFAFAFA),
            border: Border.all(width: 1, color: Color(0xffFF3438)),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Center(
              child: Text(
            isPressed ? "Follow" : "Following",
            style: TextStyle(
                color: Color(isPressed ? 0xffFAFAFA : 0xffFF3438),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}

class LikeCounts extends StatelessWidget {
  const LikeCounts({
    super.key,
    required this.likeCountFor,
    required this.likes,
  });
  final String likes;
  final String likeCountFor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(width: 1, color: Colors.grey.shade300))),
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    likes,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    likeCountFor,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalRecipe extends StatelessWidget {
  // final String itemName;
  //  final String imagePath;
  const PersonalRecipe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> imageItems = [
      'lib/assets/banana.jpg',
      'lib/assets/piza.jpg',
      'lib/assets/berry.jpg',
      'lib/assets/b.jpg',
      'lib/assets/rc.jpg',
      'lib/assets/ronan.jpg',
    ];
    List<String> itemNames = [
      ' Jesson',
      ' Jonathan',
      ' Ronan',
      ' Kessy',
      ' Mohammed',
      ' Febrian',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: imageItems.length, // number of items in the grid view
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of columns in the grid view
          mainAxisSpacing: 10.0, // spacing between rows
          crossAxisSpacing: 10.0, // spacing between columns
          childAspectRatio: 1.0, // aspect ratio of each item (width / height)
        ),
        itemBuilder: (context, int index) {
          // function that builds each item in the grid view
          return Container(
            height: 300,
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border.all(
                    width: 1, color: Color.fromRGBO(238, 238, 238, 1)),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                      imageItems[index],
                    ),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  itemNames[index],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FoodDetailsPage extends StatelessWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          food.image,
                        ),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              Fluttertoast.showToast(
                                msg: "Added to Bookmarks",
                                toastLength: Toast.LENGTH_SHORT,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Color(0xffFF3438),
                                textColor: Colors.white,
                                fontSize: 16.0,
                                gravity: ToastGravity.TOP_LEFT,
                              );
                            },
                            child: Icon(
                              Icons.bookmark_outline,
                              color: Colors.white,
                              size: 35,
                            )),
                        SizedBox(
                          width: 15,
                        ),
                        BottomSheetExample(),
                        SizedBox(
                          width: 15,
                        ),
                        MoreIcon(),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(food.caption,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      food.description,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Ingredients:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    ...food.ingredients.map((ingredient) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('- $ingredient',
                              style: TextStyle(fontSize: 20)),
                        )),
                    const SizedBox(height: 16),
                    Text(
                      'Instructions:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ...food.recipe.map((recipe) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '- $recipe',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    Headings(
                      heading: 'Comments(125)',
                    ),
                    Comments(
                      avatarImage: "lib/assets/chef.png",
                      userName: 'Samson Nyabuto',
                      theComment:
                          'Loving this recipe! So many delicious recipes to choose from❤️❤️',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
