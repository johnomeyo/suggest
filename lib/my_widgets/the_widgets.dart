import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:fluttertoast/fluttertoast.dart';

class MycheckBox extends StatefulWidget {
  const MycheckBox({super.key});

  @override
  State<MycheckBox> createState() => _MycheckBoxState();
}

class _MycheckBoxState extends State<MycheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      activeColor: Color(0xFFFF3438),
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue!;
        });
      },
    );
  }
}

class Recipes extends StatefulWidget {
  const Recipes({super.key, required this.imagePath});
  final String imagePath;

  @override
  State<Recipes> createState() => _RecipesState();
}

bool isAdded = false;

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(widget.imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 8),
            child: GestureDetector(
              onTap: () {
                 isAdded = true;
                setState(() {
                 
                  if (isAdded == true) {
                    Fluttertoast.showToast(
                      msg: "Added to Bookmarks",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Color(0xffFF3438),
                      textColor: Colors.white,
                      fontSize: 16.0,
                      gravity: ToastGravity.TOP_LEFT,
                    );
                  } else {
                    Fluttertoast.showToast(
                      msg: "Already Added to Bookmark",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Color(0xffFF3438),
                      textColor: Colors.white,
                      fontSize: 16.0,
                      gravity: ToastGravity.TOP_LEFT,
                    );
                  }
                  //print(isAdded);
                });
              },
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xFFFF3438),
                  child: Icon(isAdded ? Icons.check : Icons.bookmark_outline),
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Original italian\nPizza recipe for...",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xFFFF3438),
                  child: Image.asset("lib/assets/elon.png"),
                ),
                Text("Elon Musk",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PlainNotification extends StatelessWidget {
  const PlainNotification({super.key, required this.content});
  // ignore: prefer_typing_uninitialized_variables
  final content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Text(
        content,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}

class MoreIcon extends StatelessWidget {
  const MoreIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1, color: Colors.white)),
        child: Icon(
          Icons.more_horiz_rounded,
          size: 20,
          color: Colors.white,
        ));
  }
}

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  const CustomSearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Color(0xFFF5F5F5))),
        height: 50,
        child: Center(
          child: TextField(
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey[300]),
                  border: InputBorder.none)),
        ),
      ),
    );
  }
}

class Headings extends StatelessWidget {
  final String heading;
  const Headings({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text(
            heading,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward,
            size: 20,
            color: Color(0xFFFF3438),
          )
        ],
      ),
    );
  }
}

class RecipeCategories extends StatelessWidget {
  final String categories;
  final String imagePath;
  final int recipeCount;
  const RecipeCategories(
      {super.key,
      required this.imagePath,
      required this.categories,
      required this.recipeCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              categories,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  recipeCount.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "recipes",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
