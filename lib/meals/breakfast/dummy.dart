import 'package:flutter/material.dart';
import 'package:suggest/my_widgets/the_widgets.dart';
import 'package:suggest/my_widgets/them_widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(Scaffold(body: const SpicyNoodles()));

class SpicyNoodles extends StatelessWidget {
  const SpicyNoodles({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/assets/1.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 15),
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
                                textColor: Colors.black,
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
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Vegetable & fruit salad with balasmic dressing",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "This salad is healthy and nutritious combination of fresh vegetables and fruit with a tangy balasmic dressung.Feel free to add or substitute any ingredients to suit your taste",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffFFF4F4),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  color: Color(0xffFF3438),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "10 mins",
                                  style: TextStyle(
                                      color: Color(0xffFF3438), fontSize: 15),
                                )
                              ],
                            ),
                            Text("cooktime")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffFFF4F4),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: Color(0xffFF3438),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1 serving",
                                  style: TextStyle(
                                      color: Color(0xffFF3438), fontSize: 15),
                                )
                              ],
                            ),
                            Text("serves")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffFFF4F4),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xffFF3438),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "USA",
                                  style: TextStyle(
                                      color: Color(0xffFF3438), fontSize: 15),
                                )
                              ],
                            ),
                            Text("origin")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Divider(
                  height: 1,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Ingredients",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //ingredients
              Procedure(number: "1", whatToDo: "1 head of lettuce ,chopped 🥬"),
              Procedure(number: "2", whatToDo: "1 large carrot, grated 🥕"),
              Procedure(number: "3", whatToDo: "1 large cucumber, sliced 🥒"),
              Procedure(number: "4", whatToDo: "1 large apple, chopped 🍎"),
              Procedure(number: "5", whatToDo: "1/2 cup of raisins 🍇"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Instructions",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Procedure(
                  number: "1",
                  whatToDo:
                      "In a large salad bowl, combine the chopped lettuce, grated carrot, sliced cucumber, chopped apples, cherrry tomatoes and raisins"),
              Procedure(
                  number: "2",
                  whatToDo:
                      "Sprinkle the feta cheese over the top of the salad"),
              Procedure(
                  number: "2",
                  whatToDo:
                      "Drizzle the balasmic vinegreitte over the salad and toss to combine"),
              Procedure(number: "4", whatToDo: "Serve and enjoy"),
              Headings(heading: 'Comments(125)',),
              Comments(
                avatarImage: "lib/assets/chef.png",
                userName: 'Samson Nyabuto',
                theComment:
                    'Loving this recipe! So many delicious recipes to choose from❤️❤️',
              )
            ],
          ),
        ),
      )),
    );
  }
}
